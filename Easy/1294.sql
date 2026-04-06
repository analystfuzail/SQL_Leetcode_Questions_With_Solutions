SELECT country_name,
       CASE WHEN AVG(weather_state) <= 15 THEN 'Cold'
            WHEN AVG(weather_state) <= 25 THEN 'Hot'
            ELSE 'Warm' END AS Weather_type
FROM easy.countries1294 c JOIN easy.weather1294 w
  ON c.country_id = w.country_id 
WHERE month(day) = 11
GROUP BY country_name;