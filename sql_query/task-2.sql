SELECT o.order_id, p.product_name, oi.quantity, (oi.quantity * p.price) AS total_amount
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
ORDER BY o.order_id ASC;