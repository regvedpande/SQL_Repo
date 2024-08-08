SELECT * FROM CompanyCustomers.dbo.HappyCustomers;

SELECT SUM(salary) as sumsalary FROM HappyCustomers
WHERE hire_date BETWEEN '2024-06-01' AND '2024-06-30'

SELECT SUM(salary) AS sumsalary, DAY(hire_date) AS Hired FROM HappyCustomers
WHERE hire_date BETWEEN '2024-06-01' AND '2024-06-30'
GROUP BY DAY(hire_date);
