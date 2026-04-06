SELECT product_id,
       SUM(CASE WHEN store = 'store1' THEN price END ) AS Store1,
       SUM(CASE WHEN store = 'store2' THEN price END ) AS Store2,
       SUM(CASE WHEN store = 'store3' THEN price END ) AS Store3
FROM easy.products1777
GROUP BY product_id;