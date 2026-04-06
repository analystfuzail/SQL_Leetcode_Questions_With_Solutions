SELECT e.name,
       b.bonus
FROM easy.employee577 e LEFT JOIN easy.bonuses577 b
ON e.empId = b.empId
WHERE b.bonus < 1000 OR b.bonus IS NULL;
