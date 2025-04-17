1.UNION

SELECT column1, column2 FROM table1
UNION
SELECT column1, column2 FROM table2;

2.INTERSECT

SELECT column1 FROM table1
INTERSECT
SELECT column1 FROM table2;

🔹 3. EXCEPT (also known as MINUS in some DBs)

SELECT column1 FROM table1
EXCEPT
SELECT column1 FROM table2;


