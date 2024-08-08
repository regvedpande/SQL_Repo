CREATE DATABASE CompanyCustomers;
USE CompanyCustomers;

CREATE TABLE HappyCustomers (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    salary DECIMAL(10, 2),
    department_id INT,
    hire_date DATE
);


INSERT INTO HappyCustomers (employee_id, first_name, last_name, salary, department_id, hire_date) VALUES
(1, 'John', 'Doe', 55000, 1, '2024-01-10'),
(2, 'Jane', 'Smith', 72000, 2, '2024-02-15'),
(3, 'Robert', 'Brown', 64000, 2, '2024-03-20'),
(4, 'Emily', 'Davis', 45000, 3, '2024-04-25'),
(5, 'Michael', 'Wilson', 49000, 3, '2024-05-30'),
(6, 'Sarah', 'Miller', 78000, 4, '2024-06-05'),
(7, 'David', 'Moore', 69000, 4, '2024-07-10'),
(8, 'Linda', 'Taylor', 85000, 2, '2024-08-15'),
(9, 'James', 'Anderson', 61000, 1, '2024-09-20'),
(10, 'Patricia', 'Thomas', 73000, 3, '2024-10-25');


SELECT * FROM HappyCustomers;

SELECT SUM(salary) FROM HappyCustomers;

SELECT * FROM HappyCustomers;

-- Practice 1 of GROUP BY
SELECT department_id, AVG(salary) AS average_salary FROM HappyCustomers
GROUP BY department_id;

-- Practice 2 of GROUP BY
INSERT INTO HappyCustomers (employee_id, first_name, last_name, salary, department_id, hire_date)
VALUES (11, 'Regved', 'Pande', 46000, 2, '2024-11-30');

-- Practice 3 of GROUP BY
SELECT department_id, COUNT(first_name) AS quantity FROM HappyCustomers
GROUP BY department_id;

-- Practice 4 of GROUP BY
SELECT department_id, COUNT(first_name) AS two FROM HappyCustomers
WHERE department_id = 2
GROUP BY department_id;

-- Practice 5 of GROUP BY
SELECT department_id, COUNT(last_name) AS three FROM HappyCustomers
WHERE department_id = 3
GROUP BY department_id;
