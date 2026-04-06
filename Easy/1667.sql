SELECT user_id,
	   CONCAT(UPPER(LEFT(name,1)),LOWER(SUBSTRING(name,2))) AS Name
FROM easy.users1667
ORDER BY user_id;