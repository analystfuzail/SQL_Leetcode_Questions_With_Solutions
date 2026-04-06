SELECT o.customer_id, c.name
FROM easy.Customers1511 c, easy.Product1511 p, easy.Orders1511 o
WHERE c.customer_id = o.customer_id AND p.product_id = o.product_id
GROUP BY o.customer_id                                             
HAVING       -- You can use an aggregate function in the HAVING or ORDER BY clause to filter or sort results, even without including the function in the SELECT list --
(              
    SUM(CASE WHEN o.order_date LIKE '2020-06%' THEN o.quantity*p.price ELSE 0 END) >= 100
    and
    SUM(CASE WHEN o.order_date LIKE '2020-07%' THEN o.quantity*p.price ELSE 0 END) >= 100
);