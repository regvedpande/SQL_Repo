--Example 1: Select distinct ages of candidates.
SELECT DISTINCT Age 
FROM CANDIDATES_INFO;

--Example 2: Select distinct scores of candidates.
SELECT DISTINCT Score 
FROM CANDIDATES_INFO;

--Example 3: Select distinct names of candidates.
SELECT DISTINCT Name 
FROM CANDIDATES_INFO;

--Example 4: Select distinct combinations of name and age.
SELECT DISTINCT Name, Age 
FROM CANDIDATES_INFO;

--Example 5: Select distinct combinations of age and score.
SELECT DISTINCT Age, Score 
FROM CANDIDATES_INFO;