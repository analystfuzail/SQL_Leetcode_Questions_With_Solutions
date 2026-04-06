SELECT ad_id, 
       (CASE WHEN clicks+views = 0 THEN 0 ELSE ROUND(clicks/(clicks+views)*100,2) END) AS Ctr
       FROM 
           (SELECT ad_id,
		           SUM(CASE WHEN action = 'clicked' THEN 1 ELSE 0 END) AS clicks,
                   SUM(CASE WHEN action = 'viewed' THEN 1 ELSE 0 END) AS views
           FROM easy.ads1322
           GROUP BY ad_id
           ) AS tmp
ORDER BY ctr DESC, ad_id ASC;