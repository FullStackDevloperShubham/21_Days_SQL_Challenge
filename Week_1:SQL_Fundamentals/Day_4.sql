🔢 ORDER BY – Sorting the Result Set

You use ORDER BY to sort rows based on one or more columns.
SELECT column1, column2
FROM table_name
ORDER BY column1 [ASC|DESC];


🎯 LIMIT – Restrict the Number of Rows Returned
This is used to fetch a specific number of rows.

SELECT * FROM table_name
LIMIT number;

OFFSET – Skip a Specific Number of Rows
Use OFFSET to skip rows before starting to return rows.

SELECT * FROM table_name
LIMIT number OFFSET offset_value;
