DROP DATABASE IF EXISTS employees_db;
CREATE DATABASE employees_db;

USE employees_db;

CREATE TABLE departments (
  id INT AUTO_INCREMENT NOT NULL,
  dep_name VARCHAR(30) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE roles (
  id INT AUTO_INCREMENT,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL NOT NULL,
  department_id INT NOT NULL,
  FOREIGN KEY (department_id) 
  REFERENCES departments(id)
  ON DELETE SET NULL
);

CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  roles_id INT,
  FOREIGN KEY (roles_id)
  REFERENCES roles(id)
  ON DELETE SET NULL
  manager_id INT,
  FOREIGN KEY (manager_id)
  REFERENCES employee(id)
  ON DELETE SET NULL
);