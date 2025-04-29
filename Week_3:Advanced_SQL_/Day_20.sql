Step 1: Choose a Real-World Scenario

Customers(id, name, email)
Orders(id, customer_id, order_date, total_amount)
Order_Items(id, order_id, product_id, quantity, price)
Products(id, name, category, stock)

Step 2: Identify Real Business Queries

Step 3: Write and Optimize Queries

SELECT customer_id, SUM(total_amount) as total
FROM Orders
WHERE order_date >= CURRENT_DATE - INTERVAL '6 months'
GROUP BY customer_id
ORDER BY total DESC
LIMIT 5;

Optimized Version:

 -- Assuming indexes on (order_date), (customer_id)
SELECT c.name, SUM(o.total_amount) AS total_spent
FROM Customers c
JOIN Orders o ON c.id = o.customer_id
WHERE o.order_date >= CURRENT_DATE - INTERVAL '6 months'
GROUP BY c.id, c.name
ORDER BY total_spent DESC
LIMIT 5;

Use EXPLAIN for Query Plan

EXPLAIN ANALYZE
SELECT c.name, SUM(o.total_amount) AS total_spent
FROM Customers c
JOIN Orders o ON c.id = o.customer_id
WHERE o.order_date >= CURRENT_DATE - INTERVAL '6 months'
GROUP BY c.id, c.name
ORDER BY total_spent DESC
LIMIT 5;

