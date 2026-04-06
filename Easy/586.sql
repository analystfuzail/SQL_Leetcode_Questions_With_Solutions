SELECT Customer_Number
FROM easy.orders586
GROUP BY customer_number
ORDER BY COUNT(*) DESC
LIMIT 1;