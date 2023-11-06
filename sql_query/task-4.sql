SELECT c.name AS CustomerName, SUM(o.purchase_amount) AS TotalPurchaseAmount
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY TotalPurchaseAmount DESC LIMIT 5;