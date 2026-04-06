SELECT p.product_name, 
       s.year,
       s.price
FROM easy.sales1068 s JOIN easy.product1068 p
ON s.product_id = p.product_id;