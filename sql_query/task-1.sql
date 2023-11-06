SELECT count(*) as total_orders, c.customer_id,c.name
FROM `customers` as c
LEFT JOIN orders O ON c.custormer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_orders DESC;