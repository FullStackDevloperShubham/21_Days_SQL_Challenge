-- 1. Creating a Database
CREATE DATABASE college_db;

-- 2. Viewing Available Databases
SHOW DATABASES;

-- 3. Using a Database
USE college_db;

-- 4. Creating a Table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    age INT
);

-- 5. Viewing Tables in a Database
SHOW TABLES;

-- 6. Describing Table Structure
DESCRIBE students;

-- 7a. Add a new column
ALTER TABLE students ADD gender VARCHAR(10);

-- 7b. Rename a column
ALTER TABLE students RENAME COLUMN name TO full_name;

-- 7c. Change data type
ALTER TABLE students MODIFY age SMALLINT;

-- 7d. Drop a column
ALTER TABLE students DROP COLUMN gender;

-- 8. Renaming a Table
RENAME TABLE students TO student_info;

-- 9. Deleting a Table
DROP TABLE student_info;

-- 10. Deleting a Database
DROP DATABASE college_db;
