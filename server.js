const express = require('express');
const mysql = require('mysql2');
// const inquirer = require('inquirer');

const PORT = process.env.PORT || 3001;
const app = express();

// Middleware
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

// Connect to database
const db = mysql.createConnection(
  {
    host: 'localhost',
    user: 'root',
    password: '!1Printer',
    database: 'employees_db'
  },
  console.log(`Connected to the employees_db database.`)
);

function init(){
    inquirer
    .prompt([
        {
            type: 'list',
            name: 'choice',
            message: 'What would you like to do?',
            choices:[
               "View All Employees",
               "View All Roles",
               "View All Departments"
            ]
        }
    ])
    .then((ans) => {
        if(ans.choice === "View All Employees"){
            db.query('SELECT employees.id,employees.first_name,employees.last_name, role.title, employees.manager_id FROM Employees INNER JOIN role ON employees.role_id = role.id', function (err, results) {
                console.table(results);
                init();
            }
        }
    });
}
// Default response for unknown req (Not Found)
app.use((req, res) => {
    res.status(404).end();
});
app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});
  