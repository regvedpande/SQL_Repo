-- Create a new database named GOOGLE_EMPLOYEES
CREATE DATABASE GOOGLE_EMPLOYEES;

-- Switch to the GOOGLE_EMPLOYEES database
USE GOOGLE_EMPLOYEES;

-- Create a table named GOOGLERS with columns for ID, NAME, AGE, and SALARY
CREATE TABLE GOOGLERS
(
  -- ID is an auto-incrementing integer and the primary key
  ID INT IDENTITY(1,1) PRIMARY KEY,
  
  -- NAME is a variable character field with a maximum length of 20 characters
  NAME VARCHAR(20) NOT NULL,
  
  -- AGE is an integer and cannot be null
  AGE INT NOT NULL,
  
  -- SALARY is a decimal with 8 digits total and 2 decimal places
  SALARY DECIMAL(8, 2) NOT NULL
);

-- Alter the GOOGLERS table to add a new column for DEPARTMENT
ALTER TABLE GOOGLERS
ADD DEPARTMENT VARCHAR(25) NOT NULL;

-- Retrieve all records from the GOOGLERS table
SELECT * FROM GOOGLERS;

-- Insert multiple records into the GOOGLERS table
INSERT INTO GOOGLERS (NAME, AGE, SALARY, DEPARTMENT)
VALUES
('Alice', 30, 5000.00, 'Software'),
('Bob', 25, 4000.00, 'Testing'),
('Charlie', 35, 6000.00, 'Web Dev'),
('Regved', 24, 230000.08, 'App Dev'),
('Ayush', 22, 67588.90, 'iOS Dev');

-- Update the NAME of the record with ID = 3
UPDATE GOOGLERS
SET NAME = 'Sagar'
WHERE ID = 3;

-- Update the NAME and AGE of the record with ID = 2
UPDATE GOOGLERS
SET NAME = 'Jitu', AGE = 26 -- Fixed data type for AGE from string to integer
WHERE ID = 2;

-- Delete the record with ID = 5
DELETE FROM GOOGLERS
WHERE ID = 5;

-- Retrieve all records from the GOOGLERS table
SELECT * FROM GOOGLERS;

-- Select distinct departments from the GOOGLERS table
SELECT DISTINCT DEPARTMENT FROM GOOGLERS;

-- Insert records into the GOOGLERS table (note: duplicate entries from previous insertion)
INSERT INTO GOOGLERS (NAME, AGE, SALARY, DEPARTMENT) VALUES
('Regved', 24, 230000.08, 'App Dev'),
('Ayush', 22, 67588.90, 'iOS Dev');

-- Retrieve records where AGE is less than 25 and SALARY is greater than 23000
SELECT * FROM GOOGLERS
WHERE AGE < 25 AND SALARY > 23000;

-- Retrieve the top 3 records from the GOOGLERS table
SELECT TOP 3 * FROM GOOGLERS;

-- Retrieve all records from the GOOGLERS table, ordered by DEPARTMENT in ascending order
SELECT * FROM GOOGLERS
ORDER BY DEPARTMENT ASC;

-- Retrieve NAME in uppercase and original NAME from the GOOGLERS table
SELECT UPPER(NAME) AS UPPERNAMES, NAME FROM GOOGLERS;

-- Alter the GOOGLERS table to add a new column for DATED (date of entry)
ALTER TABLE GOOGLERS
ADD DATED DATE;

-- Update the DATED column with the current date for all records
UPDATE GOOGLERS
SET DATED = GETDATE();

-- Retrieve all records from the GOOGLERS table
SELECT * FROM GOOGLERS;

-- Retrieve the DATED column where the year is 2024
SELECT DATED FROM GOOGLERS
WHERE YEAR(DATED) = 2024;

-- Retrieve the first 4 characters of NAME as NAMED from the GOOGLERS table
SELECT SUBSTRING(NAME, 1, 4) AS NAMED FROM GOOGLERS;

-- Retrieve records where SALARY is exactly 6000.00 (note: exact match may not work as intended)
SELECT * FROM GOOGLERS WHERE SALARY = 6000.00;

-- Replace occurrences of 'Sagar' with 'Sarvesh' in NAME column and return as NAMES
SELECT REPLACE(NAME , 'Sagar', 'Sarvesh') AS NAMES FROM GOOGLERS;

-- Count the number of NAME entries in the GOOGLERS table
SELECT COUNT(NAME) FROM GOOGLERS;

-- Count the number of NAME entries in the GOOGLERS table again (duplicate)
SELECT COUNT(NAME) FROM GOOGLERS;

-- Calculate and round the average SALARY to 4 decimal places
SELECT ROUND(AVG(SALARY), 4) FROM GOOGLERS;

-- Retrieve all records from the GOOGLERS table
SELECT * FROM GOOGLERS;

-- Group records by DEPARTMENT and calculate average SALARY, returning only those departments with an average salary greater than 5000
SELECT DEPARTMENT, AVG(SALARY) AS AVGSALARY
FROM GOOGLERS
GROUP BY DEPARTMENT
HAVING AVG(SALARY) > 5000.000000;

