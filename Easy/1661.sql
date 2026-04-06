SELECT machine_id,
       ROUND(SUM(CASE WHEN activity_type = 'start' THEN -timestamp ELSE timestamp END) / COUNT(DISTINCT process_id),3) AS Processing_time
FROM easy.activity1661
GROUP BY machine_id;

