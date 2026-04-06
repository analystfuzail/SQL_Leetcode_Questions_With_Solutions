SELECT s.buyer_id
FROM easy.sales1083 s JOIN easy.product1083 p
ON s.product_id = p.product_id
WHERE product_name = 'S8' AND buyer_id NOT IN (SELECT DISTINCT buyer_id
                                               FROM easy.product1083 p JOIN easy.sales1083 s
											   ON p.product_id = s.product_id
                                               WHERE p.product_name = 'Iphone'
											  );