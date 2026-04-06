SELECT * 
FROM easy.users1517
WHERE mail regexp "^[a-zA-Z]+[a-zA-Z0-9_\\./\-]{0,}@leetcode.com$"
ORDER BY user_id;