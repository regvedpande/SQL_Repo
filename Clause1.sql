CREATE DATABASE HOLLYWOOD
USE HOLLYWOOD

CREATE TABLE HOLLYWOODACTORS (
    actor_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    nationality VARCHAR(50)
);


INSERT INTO HOLLYWOODACTORS (actor_id, name, age, gender, nationality) VALUES
(1, 'Robert Downey Jr.', 58, 'Male', 'American'),
(2, 'Scarlett Johansson', 39, 'Female', 'American'),
(3, 'Chris Hemsworth', 40, 'Male', 'Australian'),
(4, 'Gal Gadot', 38, 'Female', 'Israeli'),
(5, 'Denzel Washington', 69, 'Male', 'American'),
(6, 'Tom Hanks', 67, 'Male', 'American'),
(7, 'Emma Stone', 35, 'Female', 'American'),
(8, 'Leonardo DiCaprio', 49, 'Male', 'American'),
(9, 'Natalie Portman', 43, 'Female', 'Israeli'),
(10, 'Will Smith', 55, 'Male', 'American'),
(11, 'Robert Downey Jr.', 58, 'Male', 'American'),
(12, 'Scarlett Johansson', 39, 'Female', 'American'),
(13, 'Chris Hemsworth', 40, 'Male', 'Australian'),
(14, 'Gal Gadot', 38, 'Female', 'Israeli'),
(15, 'Denzel Washington', 69, 'Male', 'American'),
(16, 'Tom Hanks', 67, 'Male', 'American'),
(17, 'Emma Stone', 35, 'Female', 'American'),
(18, 'Leonardo DiCaprio', 49, 'Male', 'American'),
(19, 'Natalie Portman', 43, 'Female', 'Israeli'),
(20, 'Will Smith', 55, 'Male', 'American');

SELECT * FROM HOLLYWOODACTORS

--Practice 1
SELECT name, age, COUNT(age) as total FROM HOLLYWOODACTORS
WHERE age BETWEEN 50 AND 60
GROUP BY name, AGE;

--Practice 2
SELECT name, age, COUNT(age) as total FROM HOLLYWOODACTORS
WHERE age BETWEEN 60 AND 70
GROUP BY name, AGE;

--Practice 3
SELECT name, nationality, COUNT(nationality) as citizenship FROM HOLLYWOODACTORS
WHERE nationality IN ('American', 'Israeli')
GROUP BY name, nationality
ORDER BY nationality ASC;

--Practice 4
SELECT name, nationality, COUNT(nationality) as citizenship FROM HOLLYWOODACTORS
WHERE nationality = 'American'
GROUP BY name, nationality
ORDER BY nationality ASC;

--Practice 5
SELECT name, nationality, COUNT(nationality) as citizenship FROM HOLLYWOODACTORS
WHERE nationality = 'Israeli'
GROUP BY name, nationality
ORDER BY nationality ASC;

--Practice 6
SELECT name,gender, COUNT(gender) as Gender from HOLLYWOODACTORS
GROUP BY name,gender
HAVING gender = 'Male'
Order by name ASC;

--Practice 7
SELECT name,gender, COUNT(gender) as Gender from HOLLYWOODACTORS
GROUP BY name,gender
HAVING gender = 'Female'
Order by name ASC;

--Practice 8
SELECT name, age from HOLLYWOODACTORS
GROUP BY name, age
HAVING age >= 55
Order by name ASC;

--Practice 9
SELECT name, age from HOLLYWOODACTORS
GROUP BY name, age
HAVING age >= 60
Order by name ASC;

--Practice 10
SELECT name, age from HOLLYWOODACTORS
GROUP BY name, age
HAVING age >= 55 AND age <= 60
Order by name ASC;