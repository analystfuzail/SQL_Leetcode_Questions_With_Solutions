SELECT *
FROM easy.movies620
WHERE id%2 = 1 AND description != 'Boring'
ORDER BY rating DESC;