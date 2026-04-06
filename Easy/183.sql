SELECT name
FROM easy.customer183
WHERE Id NOT IN ( SELECT customerId
                  FROM easy.orders183
				);
                
SELECT c.name 
FROM easy.customer183 c LEFT JOIN easy.orders183 o 
ON c.Id = o.CustomerId
WHERE o.customerId IS NULL;
