SELECT "[0-5>" AS Bins, COUNT(*) AS Total
FROM easy.sessions1435 
WHERE duration > 0 AND duration < 300
UNION 
SELECT "[5-10>" AS Bins, COUNT(*) AS Total
FROM easy.sessions1435 
WHERE duration >= 300 AND duration < 600
UNION 
SELECT "[10-15>" AS Bins, COUNT(*) AS Total
FROM easy.sessions1435 
WHERE duration >= 600 AND duration < 900
UNION 
SELECT "15 or more" AS Bins, COUNT(*) AS Total
FROM easy.sessions1435 
WHERE duration >= 900;
