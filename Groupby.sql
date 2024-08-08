CREATE DATABASE CompanyDB;
USE CompanyDB;


CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    salary DECIMAL(10, 2),
    department_id INT,
);


INSERT INTO employees (employee_id, first_name, last_name, salary, department_id) VALUES
(1, 'John', 'Doe', 55000, 1),
(2, 'Jane', 'Smith', 72000, 2),
(3, 'Robert', 'Brown', 64000, 2),
(4, 'Emily', 'Davis', 45000, 3),
(5, 'Michael', 'Wilson', 49000, 3),
(6, 'Sarah', 'Miller', 78000, 4),
(7, 'David', 'Moore', 69000, 4),
(8, 'Linda', 'Taylor', 85000, 2),
(9, 'James', 'Anderson', 61000, 1),
(10, 'Patricia', 'Thomas', 73000, 3);

SELECT * FROM employees;

SELECT SUM(salary) FROM employees;

SELECT * FROM employees;

--Example 1 of GROUP BY
SELECT department_id, avg(salary) FROM employees
GROUP BY department_id;

--Example 2 of GROUP BY
INSERT INTO employees (employee_id, first_name, last_name, salary, department_id)
VALUES
(11, 'Regved', 'Pande', 46000, 2);


--Example 3 of GROUP BY
SELECT department_id, COUNT(first_name) as quantity FROM employees
group by department_id;

--Example 4 of GROUP BY
SELECT department_id, COUNT(first_name) as two FROM employees
WHERE department_id = 2
GROUP BY department_id;

--Example 5 of GROUP BY
SELECT department_id, COUNT(last_name) as three FROM employees
WHERE department_id = 3
GROUP BY department_id;
