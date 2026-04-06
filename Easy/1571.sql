SELECT w.name AS Warehouse_name,
       SUM(w.units*p.width*p.length*p.height) AS Volume
FROM easy.warehouse1571 w JOIN easy.products1571 p
    ON w.product_id = p.product_id
GROUP BY w.name;