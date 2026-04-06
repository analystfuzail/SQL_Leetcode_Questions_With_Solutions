SELECT sell_date,
	   COUNT(DISTINCT product) AS Num_Sold,
       GROUP_CONCAT(product) AS Items
FROM easy.activities1484
GROUP BY sell_date
ORDER BY sell_date;