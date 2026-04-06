SELECT LEFT(order_date, 7) AS MonthName,
       COUNT(DISTINCT order_id) AS Order_count,
       COUNT(DISTINCT customer_id) AS Customer_Count
FROM easy.orders1565
WHERE invoice > 20
GROUP BY monthname;