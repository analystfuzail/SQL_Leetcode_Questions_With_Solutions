SELECT employee_id, department_id
FROM easy.employee1789
WHERE primary_flag = 'Y' OR employee_id IN ( SELECT employee_id
											  FROM easy.employee1789
                                              GROUP BY employee_id 
                                              HAVING COUNT(*) = 1
											);




