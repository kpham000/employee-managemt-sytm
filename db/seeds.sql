INSERT INTO departments (department_name)
VALUES ("Management"),
       ("Cashier"),
       ("Delivery"),
       ("stock");

INSERT INTO roles(title, salary, department_id)
VALUES  ('manager', 100000, 1),
        ('supervisor', 80000, 1),
        ('registers', 15000, 2),
        ('bagger', 12000, 2),
        ('dropoff', 11000, 3),
        ('curbside', 11500, 3),
        ('displayer', 25000, 4),
        ('restock', 19000, 4);

INSERT INTO employees (first_name, last_name, role_id, manager_id)VALUES ("John", "Doe", 1, null),("Jane", "Doe", 2, 1),("Bob", "Bill", 3, null),("Bobby", "Billy", 4, 1),("Drew","Gill", 5, null),("Fish","Filet", 6, 1),("Dan","Fisher", 7, null),("Rizza", "Klein", 8, 1);


    