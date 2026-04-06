SELECT IFNULL(ROUND(AVG(a.num),2),0) AS Average_session_per_user
FROM (SELECT COUNT(DISTINCT session_id) AS num
      FROM easy.activity1142
	  WHERE activity_date BETWEEN '2019-06-27' AND '2019-07-27'
      GROUP BY user_id
	 ) AS a;