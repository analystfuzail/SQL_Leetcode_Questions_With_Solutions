SELECT contest_id,
       ROUND(COUNT(user_id)*100.00/(SELECT COUNT(*) FROM easy.users1633),2) AS Percentage
FROM easy.register1633
GROUP BY contest_id
ORDER BY 2 DESC, contest_id ASC;