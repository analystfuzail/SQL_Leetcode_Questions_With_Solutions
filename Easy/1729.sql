SELECT user_id,
	   COUNT(user_id) AS Follower_count
FROM easy.followers1729
GROUP BY user_id
ORDER BY user_id;