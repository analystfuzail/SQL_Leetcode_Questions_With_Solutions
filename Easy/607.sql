SELECT name
FROM easy.salesperson607
WHERE name NOT IN (SELECT s.name
                   FROM easy.salesperson607 s JOIN easy.orders607 o
				   ON s.sales_id = o.sales_id 
                   JOIN easy.company607 c 
                   ON c.com_id = o.com_id
                   WHERE c.name = 'RED'
				  );
