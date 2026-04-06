SELECT Project_id 
FROM easy.project1076
GROUP BY project_id
HAVING COUNT(*) = ( SELECT COUNT(*)
                    FROM easy.project1076
                    GROUP BY project_id
                    ORDER BY COUNT(*) DESC
                    LIMIT 1
				  );