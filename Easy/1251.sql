SELECT u.product_id, 
       ROUND(SUM(units*price)/SUM(units), 2) AS average_price
FROM easy.UnitsSold1251 u INNER JOIN easy.Prices1251 p
  ON u.product_id = p.product_id
AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY u.product_id;