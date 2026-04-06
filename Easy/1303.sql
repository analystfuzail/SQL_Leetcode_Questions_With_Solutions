SELECT employee_id, 
       tmp.team_size
FROM easy.employee1303 e
JOIN 
    (SELECT team_id, COUNT(team_id) AS Team_size
     FROM easy.employee1303
     GROUP BY team_id
    ) AS tmp
ON e.team_id = tmp.team_id;