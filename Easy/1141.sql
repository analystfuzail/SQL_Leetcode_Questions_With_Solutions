SELECT activity_date, COUNT(DISTINCT user_id) AS Active_users
FROM easy.activity1141
WHERE activity_date BETWEEN '2019-06-27' AND '2019-07-27'
GROUP BY activity_date
HAVING COUNT(DISTINCT user_id) > 0;