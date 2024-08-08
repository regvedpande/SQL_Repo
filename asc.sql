--Example 1: Select all candidates ordered by name in ascending order.
SELECT * 
FROM CANDIDATES_INFO1
ORDER BY Name ASC;

--Example 2: Select all candidates ordered by age in ascending order.
SELECT * 
FROM CANDIDATES_INFO 
ORDER BY Age ASC;

--Example 3: Select all candidates ordered by score in ascending order.
SELECT * 
FROM CANDIDATES_INFO 
ORDER BY Score ASC;

--Example 4: Select all candidates ordered by age and then by score in ascending order.
SELECT * 
FROM CANDIDATES_INFO 
ORDER BY Age ASC, Score ASC;

--Example 5: Select all candidates ordered by name and then by age in ascending order.
SELECT * 
FROM CANDIDATES_INFO 
ORDER BY Name ASC, Age ASC;