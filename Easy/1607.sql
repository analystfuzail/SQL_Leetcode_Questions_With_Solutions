SELECT seller_name 
FROM easy.seller1607
WHERE seller_id NOT IN (SELECT seller_id 
					    FROM easy.orders1607
                        WHERE YEAR(sale_date) = '2020'
					   );
