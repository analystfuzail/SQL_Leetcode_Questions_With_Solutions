SELECT player_id, MIN(event_date) AS FirstLogin
FROM easy.activity511
GROUP BY player_id;