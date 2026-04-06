SELECT x, 
       y, 
       z, 
       CASE WHEN x+y>z AND Y+z>x AND x+z>y THEN 'Yes' ELSE 'No' END AS Triangle
FROM easy.triangle610;