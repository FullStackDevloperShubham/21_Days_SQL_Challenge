✅ 1. UPPER()
Converts text to uppercase.

SELECT UPPER('hello world') AS upper_text;
-- Output: 'HELLO WORLD'

SELECT UPPER(name) FROM users;

✅ 2. LOWER()
Converts text to lowercase.

SELECT LOWER('HeLLo WOrLD') AS lower_text;
-- Output: 'hello world'

SELECT LOWER(email) FROM users;

✅ 3. CONCAT()
Concatenates (joins) two or more strings.

SELECT CONCAT('Hello', ' ', 'Shubham') AS full_text;
-- Output: 'Hello Shubham'

SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM users;

✅ 4. LIKE
Used for pattern matching with wildcards:

% = any sequence of characters

_ = a single character

SELECT * FROM users WHERE name LIKE 'S%';
-- Names starting with 'S'

LIKE '%son' -- Ends with 'son'
LIKE '_at'  -- 3-letter words ending with 'at', e.g., 'cat', 'bat'


✅ 5. REGEXP / RLIKE (MySQL)
Performs a search using regular expressions.

SELECT * FROM users WHERE name REGEXP '^A';
-- Names starting with 'A'

REGEXP '^[aeiou]'      -- Names starting with a vowel  
REGEXP '[0-9]'         -- Contains a number  
REGEXP 'shub.*m'       -- Contains 'shub', followed by any chars, then 'm'

💡 PostgreSQL uses ~ instead of REGEXP:

SELECT * FROM users WHERE name ~ '^A';



