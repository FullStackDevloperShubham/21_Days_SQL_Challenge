Subqueries (Nested Queries) 

Syntax:
SELECT column1
FROM table1
WHERE column2 = (
  SELECT column2
  FROM table2
  WHERE condition
);

Example:
SELECT name, salary
FROM employees
WHERE salary > (
  SELECT AVG(salary)
  FROM employees
);

CTEs (WITH Clause)

Syntax
WITH cte_name AS (
  SELECT column1, column2
  FROM table
  WHERE condition
)
SELECT *
FROM cte_name
WHERE column1 = 'some_value';

Example: 

WITH DeptAvg AS (
  SELECT department, AVG(salary) AS avg_salary
  FROM employees
  GROUP BY department
)
SELECT *
FROM DeptAvg
WHERE avg_salary = (
  SELECT MAX(avg_salary)
  FROM DeptAvg
);



