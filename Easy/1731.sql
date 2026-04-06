SELECT m.employee_id,
       m.name,
       COUNT(e.reports_to) AS ReportsCount,
       ROUND(AVG(e.age),0) AS AverageAge
FROM easy.employee1731 m 
JOIN easy.employee1731 e 
    ON e.reports_to = m.employee_id
GROUP BY employee_id, name
ORDER BY employee_id;