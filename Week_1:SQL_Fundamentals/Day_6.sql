Use EXTRACT to get parts of a date/time:

SELECT EXTRACT(YEAR FROM CURRENT_DATE);    -- 2025
SELECT EXTRACT(MONTH FROM NOW());          -- 04
SELECT EXTRACT(DAY FROM TIMESTAMP '2025-04-11 14:30:00'); -- 11

Or use shortcut functions:
SELECT DATE_PART('dow', NOW());    -- Day of week (0=Sunday)
SELECT DATE_TRUNC('hour', NOW());  -- Truncates to nearest hour

➕➖ 4. Date Arithmetic
Add/Subtract INTERVALS:

SELECT NOW() + INTERVAL '1 day';        -- Tomorrow
SELECT CURRENT_DATE - INTERVAL '7 days'; -- A week ago

SELECT AGE(TIMESTAMP '2025-04-11', TIMESTAMP '2000-01-01');  
-- 25 years 3 mons 10 days

🗓️ 5. Formatting Dates (TO_CHAR)
Customize date/time output:

SELECT TO_CHAR(NOW(), 'YYYY-MM-DD');        -- 2025-04-11
SELECT TO_CHAR(NOW(), 'Month DD, YYYY');    -- April   11, 2025
SELECT TO_CHAR(NOW(), 'HH24:MI:SS');        -- 13:45:22