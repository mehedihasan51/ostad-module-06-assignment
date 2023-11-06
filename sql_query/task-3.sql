SELECT p.name AS CategoryName, SUM(o.total_amount) AS TotalRevenue
FROM products p
JOIN orders o ON p.product_id = o.product_id
GROUP BY p.name
ORDER BY TotalRevenue DESC;