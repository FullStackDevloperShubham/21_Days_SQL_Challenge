Mini SQL Reporting Dashboard 

🧠 Step-by-Step Instructions
✅ Step 1: Create Tables
Use these four basic tables:

-- Customers table
CREATE TABLE customers (
  customer_id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100)
);

-- Products table
CREATE TABLE products (
  product_id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  price DECIMAL(10, 2),
  stock_quantity INT
);

-- Orders table
CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  customer_id INT REFERENCES customers(customer_id),
  order_date DATE,
  total_amount DECIMAL(10, 2)
);

-- Order Items table
CREATE TABLE order_items (
  item_id SERIAL PRIMARY KEY,
  order_id INT REFERENCES orders(order_id),
  product_id INT REFERENCES products(product_id),
  quantity INT,
  price_per_item DECIMAL(10, 2)
);

Step 2: Insert Sample Data
Insert some sample data to play with:

sql
Copy
Edit
-- Customers
INSERT INTO customers (name, email) VALUES
('Alice', 'alice@example.com'),
('Bob', 'bob@example.com'),
('Charlie', 'charlie@example.com');

-- Products
INSERT INTO products (name, price, stock_quantity) VALUES
('T-Shirt', 20.00, 50),
('Sneakers', 60.00, 20),
('Cap', 10.00, 5),
('Hoodie', 40.00, 15);

-- Orders
INSERT INTO orders (customer_id, order_date, total_amount) VALUES
(1, '2025-04-01', 100.00),
(2, '2025-04-05', 80.00),
(1, '2025-04-10', 60.00),
(3, '2025-04-11', 30.00);

-- Order Items
INSERT INTO order_items (order_id, product_id, quantity, price_per_item) VALUES
(1, 1, 2, 20.00),
(1, 2, 1, 60.00),
(2, 1, 1, 20.00),
(2, 4, 1, 40.00),
(3, 2, 1, 60.00),
(4, 3, 3, 10.00);

 Step 3: Build Reporting Queries
1. 🏆 Top 5 Best-Selling Products

SELECT p.name, SUM(oi.quantity) AS total_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.name
ORDER BY total_sold DESC
LIMIT 5;

👑 Top 3 Customers by Spending

SELECT c.name, SUM(o.total_amount) AS total_spent
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 3;

🗓️ Monthly Sales Report

SELECT DATE_TRUNC('month', order_date) AS month,
       SUM(total_amount) AS total_sales
FROM orders
GROUP BY month
ORDER BY month;

 ⚠️ Low Stock Alert

SELECT name, stock_quantity
FROM products
WHERE stock_quantity < 10;

Average Order Value per Customer

SELECT c.name, AVG(o.total_amount) AS avg_order_value
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.name;

Step 4: Create Views (Optional for Reuse)

CREATE VIEW top_customers AS
SELECT c.name, SUM(o.total_amount) AS total_spent
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.name
ORDER BY total_spent DESC;

CREATE VIEW monthly_sales AS
SELECT DATE_TRUNC('month', order_date) AS month,
       SUM(total_amount) AS total_sales
FROM orders
GROUP BY month;

Now you can:

SELECT * FROM top_customers;
SELECT * FROM monthly_sales;