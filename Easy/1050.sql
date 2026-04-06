SELECT actor_id, director_id
FROM easy.actordirector1050
GROUP BY actor_id, director_id
HAVING COUNT(1) >= 3;