SELECT Query_name,
	   ROUND(SUM(rating/position)/COUNT(*),2) AS Quality,
       ROUND(SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END)/COUNT(*)*100,2) AS Poor_query_percentage
FROM easy.searchresult1211
GROUP BY query_name;