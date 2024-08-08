CREATE DATABASE POLITICIANS;
USE POLITICIANS;

CREATE TABLE POLITICIANS_INFO (
    politician_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    nationality VARCHAR(50)
);

INSERT INTO POLITICIANS_INFO (politician_id, name, age, gender, nationality) VALUES
(1, 'Barack Obama', 60, 'Male', 'American'),
(2, 'Angela Merkel', 69, 'Female', 'German'),
(3, 'Justin Trudeau', 50, 'Male', 'Canadian'),
(4, 'Jacinda Ardern', 42, 'Female', 'New Zealander'),
(5, 'Emmanuel Macron', 44, 'Male', 'French'),
(6, 'Narendra Modi', 73, 'Male', 'Indian'),
(7, 'Kamala Harris', 59, 'Female', 'American'),
(8, 'Boris Johnson', 58, 'Male', 'British'),
(9, 'Xi Jinping', 69, 'Male', 'Chinese'),
(10, 'Volodymyr Zelenskyy', 46, 'Male', 'Ukrainian'),
(11, 'Barack Obama', 60, 'Male', 'American'),
(12, 'Angela Merkel', 69, 'Female', 'German'),
(13, 'Justin Trudeau', 50, 'Male', 'Canadian'),
(14, 'Jacinda Ardern', 42, 'Female', 'New Zealander'),
(15, 'Emmanuel Macron', 44, 'Male', 'French'),
(16, 'Narendra Modi', 73, 'Male', 'Indian'),
(17, 'Kamala Harris', 59, 'Female', 'American'),
(18, 'Boris Johnson', 58, 'Male', 'British'),
(19, 'Xi Jinping', 69, 'Male', 'Chinese'),
(20, 'Volodymyr Zelenskyy', 46, 'Male', 'Ukrainian');

SELECT * FROM POLITICIANS_INFO;

-- Practice 1
SELECT name, age, COUNT(age) as total FROM POLITICIANS_INFO
WHERE age BETWEEN 50 AND 60
GROUP BY name, age;

-- Practice 2
SELECT name, age, COUNT(age) as total FROM POLITICIANS_INFO
WHERE age BETWEEN 60 AND 70
GROUP BY name, age;

-- Practice 3
SELECT name, nationality, COUNT(nationality) as citizenship FROM POLITICIANS_INFO
WHERE nationality IN ('American', 'German')
GROUP BY name, nationality
ORDER BY nationality ASC;

-- Practice 4
SELECT name, nationality, COUNT(nationality) as citizenship FROM POLITICIANS_INFO
WHERE nationality = 'American'
GROUP BY name, nationality
ORDER BY nationality ASC;

-- Practice 5
SELECT name, nationality, COUNT(nationality) as citizenship FROM POLITICIANS_INFO
WHERE nationality = 'German'
GROUP BY name, nationality
ORDER BY nationality ASC;

-- Practice 6
SELECT name, gender, COUNT(gender) as Gender from POLITICIANS_INFO
WHERE gender = 'Male'
GROUP BY name, gender
ORDER by name ASC;

-- Practice 7
SELECT name, gender, COUNT(gender) as Gender from POLITICIANS_INFO
WHERE gender = 'Female'
GROUP BY name, gender
ORDER by name ASC;

-- Practice 8
SELECT name, age from POLITICIANS_INFO
WHERE age >= 55
GROUP BY name, age
ORDER by name ASC;

-- Practice 9
SELECT name, age from POLITICIANS_INFO
WHERE age >= 60
GROUP BY name, age
ORDER by name ASC;

-- Practice 10
SELECT name, age from POLITICIANS_INFO
WHERE age >= 55 AND age <= 60
GROUP BY name, age
ORDER by name ASC;