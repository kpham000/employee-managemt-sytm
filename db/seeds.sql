INSERT INTO departments (name)
VALUES ("Management"),
       ("Cashier"),
       ("Delivery"),
       ("stock");

INSERT INTO roles (title, department_id)
VALUES ("manager", 1),
       ("supervisor", 1),
       ("registers", 2),
       ("bagger", 2),
       ("dropoff", 3),
       ("curbside", 3)
       ("displayer", 4),
       ("restock", 4);

INSERT INTO employee (first_name, last_name, roles_id, manager_id)
VALUES ("John", "Doe", 1, 1),
       ("Jane", "Doe", 2, 1),
       ("Bob", "Bill", 3, 2),
       ("Bobby", "Billy", 4, 2),
       ("Drew","Gill", 5, 3),
       ("Fish","Filet", 6, 3)
       ("Dan","Fisher", 7, 4),
       ("Rizza", "Klein", 8, 4);
       

    