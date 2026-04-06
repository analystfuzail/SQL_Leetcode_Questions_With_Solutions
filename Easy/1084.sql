(SELECT DISTINCT p.product_id , p.product_name
FROM easy.product1084 p JOIN easy.sales1084 s
ON p.product_id = s.product_id
WHERE sale_date BETWEEN '2019-01-01' AND '2019-03-31')
EXCEPT
(SELECT DISTINCT p.product_id , p.product_name
FROM easy.product1084 p JOIN easy.sales1084 s
ON p.product_id = s.product_id
WHERE sale_date NOT BETWEEN '2019-01-01' AND '2019-03-31');