SELECT l1.x - l2.x AS Shortest
FROM easy.line613 l1 JOIN easy.line613 l2
WHERE l1.x > l2.x
ORDER BY l1.x - l2.x ASC
LIMIT 1;