CREATE DATABASE DIFFERENT_OCCUPATIONS
USE DIFFERENT_OCCUPATIONS


CREATE TABLE Occupations (
    OccupationID INT PRIMARY KEY,
    OccupationName VARCHAR(100),
    Salary INT 
);



INSERT INTO Occupations (OccupationID, OccupationName, Salary)
VALUES
    (1, 'Software Engineer', 110000.00),
    (2, 'Teacher', 55000.00),
    (3, 'Chef', 48000.00),
    (4, 'Nurse', 65000.00),
    (5, 'Graphic Designer', 60000.00);

	SELECT * FROM Occupations

	--IN USE 

	--Practice 1
	SELECT * FROM Occupations WHERE Salary IN(110000, 55000);

	--Practice 2
	SELECT * FROM Occupations WHERE Salary IN(55000, 48000, 55000);

	--Practice 3
	SELECT * FROM Occupations WHERE Salary IN(48000, 65000);

	--Practice 4
	SELECT * FROM Occupations WHERE Salary IN(60000, 65000);

	--Practice 5
	SELECT * FROM Occupations WHERE Salary NOT IN(110000, 48000);

	--NOT IN USE

	--Practice 1
	SELECT * FROM Occupations WHERE Salary NOT IN(110000, 55000);

	--Practice 2
	SELECT * FROM Occupations WHERE Salary NOT IN(55000, 48000, 55000);

	--Practice 3
	SELECT * FROM Occupations WHERE Salary NOT IN(48000, 65000);

	--Practice 4
	SELECT * FROM Occupations WHERE Salary NOT IN(60000, 65000);

	--Practice 5
	SELECT * FROM Occupations WHERE Salary NOT IN(110000, 48000);