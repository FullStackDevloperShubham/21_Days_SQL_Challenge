-- Optional: Create the students table
CREATE TABLE students (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  age INT,
  grade CHAR(1)
);

-- 1. CREATE (INSERT) – Add new data
INSERT INTO students (id, name, age, grade)
VALUES (1, 'Amit', 18, 'A');

-- 2. READ (SELECT) – Retrieve data
-- a. Select all records
SELECT * FROM students;

-- b. Select specific columns
SELECT name, grade FROM students;

-- c. Apply a filter
SELECT * FROM students WHERE grade = 'A';

-- 3. UPDATE – Modify existing data
UPDATE students
SET grade = 'B'
WHERE id = 1;

-- 4. DELETE – Remove data
DELETE FROM students
WHERE id = 1;
