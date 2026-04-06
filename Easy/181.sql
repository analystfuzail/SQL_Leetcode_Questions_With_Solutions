SELECT e.name AS EmployeeName
FROM easy.employee181 e JOIN easy.employee181 m
ON m.Id = e.managerId
WHERE e.salary > m.salary;