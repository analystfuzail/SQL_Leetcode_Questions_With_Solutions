SELECT class
FROM easy.students596
GROUP BY class 
HAVING COUNT(*) >= 5;