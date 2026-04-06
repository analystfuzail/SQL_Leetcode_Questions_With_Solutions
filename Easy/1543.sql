SELECT TRIM(LOWER(product_name)) AS Name,
       DATE_FORMAT(sale_date,"%Y-%m") AS Sale_date,
       COUNT(*) AS Total
FROM easy.sales1543
GROUP BY name, DATE_FORMAT(sale_date,"%Y-%m")
ORDER BY 1, 2;