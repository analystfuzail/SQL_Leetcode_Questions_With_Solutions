SELECT ROUND(SUM(CASE WHEN order_date = customer_pref_delivery_date THEN 1 ELSE 0 END)/COUNT(DISTINCT delivery_id)*100,2) AS Immediate_percentage
FROM easy.delivery1173;