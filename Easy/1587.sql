SELECT u.name,
       ROUND(SUM(t.amount),0) AS Balance
FROM easy.users1587 u JOIN easy.transactions1587 t
    ON u.account = t.account 
GROUP BY u.name 
HAVING balance > 10000;