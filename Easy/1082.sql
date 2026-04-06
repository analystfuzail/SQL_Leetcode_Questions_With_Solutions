SELECT seller_id
FROM easy.sales1082
GROUP BY seller_id 
HAVING SUM(price) = (SELECT SUM(price)
                     FROM easy.sales1082
                     GROUP BY seller_id
                     ORDER BY SUM(price) DESC
                     LIMIT 1
                    );