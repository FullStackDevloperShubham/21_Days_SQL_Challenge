 1. INNER JOIN

 SELECT a.column1, b.column2
FROM tableA a
INNER JOIN tableB b
ON a.common_column = b.common_column;

Example

SELECT students.name, enrollments.course
FROM students
INNER JOIN enrollments
ON students.id = enrollments.student_id;

 2. LEFT JOIN (or LEFT OUTER JOIN)

 SELECT a.column1, b.column2
FROM tableA a
LEFT JOIN tableB b
ON a.common_column = b.common_column;

Example

SELECT students.name, enrollments.course
FROM students
LEFT JOIN enrollments
ON students.id = enrollments.student_id;

3. RIGHT JOIN (or RIGHT OUTER JOIN)

SELECT a.column1, b.column2
FROM tableA a
RIGHT JOIN tableB b
ON a.common_column = b.common_column;

Example

SELECT students.name, enrollments.course
FROM students
RIGHT JOIN enrollments
ON students.id = enrollments.student_id;


