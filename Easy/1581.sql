SELECT customer_id, COUNT(*) AS Count_no_trans
FROM easy.visits1581
WHERE visit_id NOT IN (SELECT visit_id 
                       FROM easy.transactions1581       -- Finding those ids who are visited and in main query we are ignoring the ids who visited 
                       GROUP BY visit_id
					  )
GROUP BY customer_id
ORDER BY 2 DESC;