SELECT u.name,
       COALESCE(SUM(distance),0) AS Travelled_Distance
FROM easy.users1407 u LEFT JOIN easy.rides1407 r
    ON u.id = r.user_id
GROUP BY u.name
ORDER BY travelled_distance DESC, name;