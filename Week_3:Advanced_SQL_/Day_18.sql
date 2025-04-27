1. Query Execution Plans

EXPLAIN SELECT * FROM employees WHERE age > 30;

To get more detailed information, you can use EXPLAIN ANALYZE:

EXPLAIN ANALYZE SELECT * FROM employees WHERE age > 30;

Creating Indexes:

CREATE INDEX idx_employee_age ON employees(age);

For composite indexes (indexes on multiple columns):

CREATE INDEX idx_employee_name_age ON employees(name, age);


Best Practices for Indexing:


CREATE INDEX idx_employee_active ON employees (age) WHERE active = true;

Index Maintenance:

Reindexing
REINDEX INDEX idx_employee_age;

Vacuum
VACUUM ANALYZE;



