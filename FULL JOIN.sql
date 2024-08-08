CREATE DATABASE  meta_employees;
USE meta_employees;

CREATE TABLE departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE projects (
    project_id INT AUTO_INCREMENT PRIMARY KEY,
    project_name VARCHAR(50),
    employee_id INT,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

INSERT INTO departments (department_name) VALUES
('Human Resources'),
('Finance'),
('Engineering');

INSERT INTO employees (first_name, last_name, department_id) VALUES
('John', 'Doe', 1),
('Jane', 'Smith', 2),
('Sam', 'Johnson', 3),
('Chris', 'Lee', 1),
('Anna', 'Taylor', 2);

INSERT INTO projects (project_name, employee_id) VALUES
('Project Alpha', 1),
('Project Beta', 2),
('Project Gamma', 3);

-- FULL JOIN 1
SELECT e.employee_id, e.first_name, e.last_name, d.department_name, p.project_name
FROM employees AS e
LEFT JOIN departments AS d ON e.department_id = d.department_id
LEFT JOIN projects AS p ON e.employee_id = p.employee_id

UNION

SELECT e.employee_id, e.first_name, e.last_name, d.department_name, p.project_name
FROM employees AS e
RIGHT JOIN departments AS d ON e.department_id = d.department_id
RIGHT JOIN projects AS p ON e.employee_id = p.employee_id;

-- FULL JOIN 2
SELECT e.employee_id, e.first_name, p.project_name
FROM employees AS e
LEFT JOIN departments AS d ON e.department_id = d.department_id
LEFT JOIN projects AS p ON e.employee_id = p.employee_id

UNION

SELECT e.employee_id, e.first_name, p.project_name
FROM employees AS e
RIGHT JOIN departments AS d ON e.department_id = d.department_id
RIGHT JOIN projects AS p ON e.employee_id = p.employee_id;

-- FULL JOIN 3
SELECT e.first_name, e.last_name, d.department_name, p.project_name
FROM employees AS e
LEFT JOIN departments AS d ON e.department_id = d.department_id
LEFT JOIN projects AS p ON e.employee_id = p.employee_id

UNION

SELECT e.first_name, e.last_name, d.department_name, p.project_name
FROM employees AS e
RIGHT JOIN departments AS d ON e.department_id = d.department_id
RIGHT JOIN projects AS p ON e.employee_id = p.employee_id;

-- FULL JOIN 4
SELECT e.employee_id, e.first_name, e.last_name, d.department_name
FROM employees AS e
LEFT JOIN departments AS d ON e.department_id = d.department_id
LEFT JOIN projects AS p ON e.employee_id = p.employee_id

UNION

SELECT e.employee_id, e.first_name, e.last_name, d.department_name
FROM employees AS e
RIGHT JOIN departments AS d ON e.department_id = d.department_id
RIGHT JOIN projects AS p ON e.employee_id = p.employee_id;

-- FULL JOIN 5
SELECT e.employee_id, e.first_name, e.last_name, d.department_name, p.project_name
FROM employees AS e
LEFT JOIN projects AS p ON e.employee_id = p.employee_id
LEFT JOIN departments AS d ON e.department_id = d.department_id

UNION

SELECT e.employee_id, e.first_name, e.last_name, d.department_name, p.project_name
FROM employees AS e
RIGHT JOIN projects AS p ON e.employee_id = p.employee_id
RIGHT JOIN departments AS d ON e.department_id = d.department_id;

