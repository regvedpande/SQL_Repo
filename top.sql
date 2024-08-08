
--Example 1: Select the top 3 candidates with the highest scores.
SELECT TOP 3 * 
FROM CANDIDATES_INFO 
ORDER BY Score DESC;


--Example 2: Select the top 2 youngest candidates.
SELECT TOP 2 * 
FROM CANDIDATES_INFO 
ORDER BY Age ASC;


--Example 3: Select the top candidate with the highest score.
SELECT TOP 1 * 
FROM CANDIDATES_INFO 
ORDER BY Score DESC;

--Example 4: Select the top 4 candidates with the lowest scores.
SELECT TOP 4 * 
FROM CANDIDATES_INFO 
ORDER BY Score ASC;

--Example 5: Select the top 5 oldest candidates.
SELECT TOP 5 * 
FROM CANDIDATES_INFO 
ORDER BY Age DESC;


