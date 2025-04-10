🔢 COUNT()
Used to count rows.

SELECT COUNT(*) FROM sales;

OR 

SELECT COUNT(price) FROM sales;

➕ SUM()
Used to sum numeric values.


SELECT SUM(price) AS total_revenue FROM sales;
You can also combine:


SELECT SUM(quantity * price) AS total_sales_value FROM sales;

📊 AVG()
Used to get the average.


SELECT AVG(price) AS average_price FROM sales;

🧮 GROUP BY
Groups rows that have the same value in specified columns.


SELECT category, SUM(price) AS total_price
FROM sales
GROUP BY category;

📌 HAVING
Like WHERE, but for aggregate results.


SELECT category, SUM(price) AS total_price
FROM sales
GROUP BY category
HAVING SUM(price) > 100;