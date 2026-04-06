SELECT p.product_name,
       SUM(o.unit) AS Units
FROM easy.products1327 p JOIN easy.orders1327 o 
   ON p.product_id = o.product_id 
WHERE LEFT(order_date,7) = '2020-02'
GROUP BY p.product_name
HAVING SUM(o.unit) >= 100;