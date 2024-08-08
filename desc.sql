--Example 1: Select all candidates ordered by name in descending order.
SELECT * 
FROM CANDIDATES_INFO 
ORDER BY Name DESC;

--Example 2: Select all candidates ordered by age in descending order.
SELECT * 
FROM CANDIDATES_INFO 
ORDER BY Age DESC;

--Example 3: Select all candidates ordered by score in descending order.
SELECT * 
FROM CANDIDATES_INFO 
ORDER BY Score DESC;

--Example 4: Select all candidates ordered by age and then by score in descending order.
SELECT * 
FROM CANDIDATES_INFO 
ORDER BY Age DESC, Score DESC;

--Example 5: Select all candidates ordered by name and then by age in descending order.
SELECT * 
FROM CANDIDATES_INFO 
ORDER BY Name DESC, Age DESC;