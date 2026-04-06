SELECT e1.name,
       e2.unique_id
FROM easy.employee1378 e1 LEFT JOIN easy.employeeuni1378 e2
   ON e1.id = e2.id;