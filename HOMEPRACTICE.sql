CREATE DATABASE my_database;
USE my_database;

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    hire_date DATE,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

INSERT INTO departments (department_id, department_name) VALUES
(1, 'HR'),
(2, 'Engineering'),
(3, 'Marketing');

INSERT INTO employees (employee_id, first_name, last_name, department_id, hire_date) VALUES
(1, 'John', 'Doe', 1, '2020-01-15'),
(2, 'Jane', 'Smith', 2, '2019-03-22'),
(3, 'Emily', 'Jones', 3, '2021-07-30'),
(4, 'Michael', 'Brown', 2, '2018-11-05');
