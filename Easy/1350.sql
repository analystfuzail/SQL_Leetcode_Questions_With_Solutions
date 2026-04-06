SELECT id,
	   name
FROM easy.students1350
WHERE department_id NOT IN (SELECT id 
                            FROM easy.department1350
						   );