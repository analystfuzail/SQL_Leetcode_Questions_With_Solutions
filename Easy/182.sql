SELECT email
FROM easy.person182
GROUP BY email
HAVING COUNT(*) > 1;

WITH CTE AS ( SELECT email, ROW_NUMBER() OVER(PARTITION BY email ORDER BY email DESC) AS rn
              FROM easy.person182
			)
SELECT email
FROM CTE 
WHERE rn > 1;