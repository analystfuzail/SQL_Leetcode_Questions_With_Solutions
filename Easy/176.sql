-- Using the Subquery
SELECT MAX(Salary) AS SecondHighestSalary
FROM easy.employee176
WHERE salary < ( SELECT MAX(salary) 
                 FROM easy.employee176
			   );
			
-- Using the CTE
WITH CTE AS ( SELECT salary, DENSE_RANK() OVER(ORDER BY salary DESC) AS rnk
              FROM easy.employee176
			)
SELECT salary
FROM CTE 
WHERE rnk = 2;

-- Using the LIMIT/OFFSET

SELECT salary
FROM easy.employee176
ORDER BY salary DESC
LIMIT 1 OFFSET 1;
