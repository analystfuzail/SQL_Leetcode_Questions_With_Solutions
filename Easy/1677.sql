SELECT p.name AS Name,
       SUM(i.rest) AS Rest,
       SUM(i.paid) AS Paid,
       SUM(i.canceled) AS Canceled,
       SUM(i.refunded) AS Refunded
FROM easy.product1677 p JOIN easy.invoice1677 i
    ON p.product_id = i.product_id
GROUP BY i.product_id;