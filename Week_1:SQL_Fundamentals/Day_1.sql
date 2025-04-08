Step 2: Basic SQL Syntax
 # Create a Table
 CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  email VARCHAR(100),
  age INT
);

📌 Insert Data
INSERT INTO users (name, email, age)
VALUES ('Shubham', 'shubham@example.com', 23);

📌 Select Data
SELECT * FROM users;

📌 Update Data
UPDATE users
SET age = 24
WHERE name = 'Shubham';


📌 Delete Data
DELETE FROM users
WHERE id = 1;