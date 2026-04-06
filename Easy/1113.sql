SELECT extra AS Report_Reason, COUNT(DISTINCT post_id) AS Report_count
FROM ( SELECT post_id, extra
       FROM easy.actions1113
       WHERE action_date = '2019-07-04' AND action = 'report'
     ) AS tmp  
GROUP BY extra;
