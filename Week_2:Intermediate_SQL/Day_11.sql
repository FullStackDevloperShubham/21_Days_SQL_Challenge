 What Are Window Functions

function_name() OVER (
  PARTITION BY column_name
  ORDER BY column_name
)

 1. ROW_NUMBER()

 SELECT 
  name, department, salary,
  ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) AS row_num
FROM employees;

2. RANK()

SELECT 
  name, department, salary,
  RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS rank
FROM employees;

3. DENSE_RANK()

SELECT 
  name, department, salary,
  DENSE_RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS dense_rank
FROM employees;


