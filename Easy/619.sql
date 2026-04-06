SELECT IFNULL(( SELECT num
				FROM easy.num619
                GROUP BY num
                HAVING COUNT(*) = 1
                ORDER BY num DESC
				LIMIT 0,1
			  ), NULL) AS Num  