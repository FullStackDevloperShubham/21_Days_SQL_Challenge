Recursive CTE Structure
sql
Copy
Edit

WITH RECURSIVE cte_name (column1, column2, ...) AS (
    -- Anchor member (base case)
    SELECT column1, column2, ...
    FROM table
    WHERE condition

    UNION ALL

    -- Recursive member (recursive case)
    SELECT t.column1, t.column2, ...
    FROM table t
    JOIN cte_name c ON t.parent_id = c.id
)
SELECT * FROM cte_name;

Example: Hierarchical Employee Table

CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name TEXT,
    manager_id INT
);

Goal: Get all employees under Alice

WITH RECURSIVE emp_tree AS (
    -- Base case: Start from Alice
    SELECT id, name, manager_id
    FROM employees
    WHERE name = 'Alice'

    UNION ALL

    -- Recursive step: Find employees managed by current level
    SELECT e.id, e.name, e.manager_id
    FROM employees e
    INNER JOIN emp_tree et ON e.manager_id = et.id
)
SELECT * FROM emp_tree;

