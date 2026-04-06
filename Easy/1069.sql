SELECT product_id,
       SUM(quantity) AS Total_quantity
FROM easy.sales1069
GROUP BY product_id;