-- Using the subquery
SELECT DISTINCT player_id, device_id
FROM easy.activity512
WHERE (player_id,event_date) IN ( SELECT player_id, MIN(event_date)
					              FROM easy.activity512
                                  GROUP BY player_id
					            );

-- Using the Window Function
SELECT player_id, device_id
FROM ( SELECT player_id, device_id, event_date, ROW_NUMBER() OVER(PARTITION BY player_id ORDER BY event_date ASC) rn FROM easy.activity512) lookup
WHERE rn = 1;
