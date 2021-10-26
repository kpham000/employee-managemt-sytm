DROP DATABASE IF EXISTS employees_db;
CREATE DATABASE employees_db;

USE employees_db;

CREATE TABLE department (
  id INT NOT NULL,
  first_name VARCHAR(30),
  PRIMARY KEY (id)
);

CREATE TABLE roles (
  id INT,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL,
  department_id INT NOT NULL,
  -- FOREIGN KEY (instructor_id)
  -- REFERENCES instructors(id)
  ON DELETE SET NULL
);

CREATE TABLE employee (
  id INT NOT NULL,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  role_id INT NOT NULL,
  manager_id INT NOT NULL,
  ON DELETE SET NULL
);