SELECT project_id, ROUND(AVG(experience_years),2) AS Expeience_years
FROM easy.project1075 p JOIN easy.employee1075 e
ON p.employee_id = e.employee_id
GROUP BY project_id;
