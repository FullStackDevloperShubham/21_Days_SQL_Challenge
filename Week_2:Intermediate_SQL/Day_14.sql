Syntax of a Basic Function

CREATE OR REPLACE FUNCTION function_name(param1 TYPE, param2 TYPE)
RETURNS return_type AS $$
DECLARE
    -- variable declarations
BEGIN
    -- logic here
    RETURN something;
END;
$$ LANGUAGE plpgsql;


Example 2: Get User's Full Name from users Table

 CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    first_name TEXT,
    last_name TEXT
);

Function:

CREATE OR REPLACE FUNCTION get_full_name(user_id INT)
RETURNS TEXT AS $$
DECLARE
    full_name TEXT;
BEGIN
    SELECT first_name || ' ' || last_name INTO full_name
    FROM users
    WHERE id = user_id;
    
    RETURN full_name;
END;
$$ LANGUAGE plpgsql;

Call it:
SELECT get_full_name(1);

Example 3: Raise a Notice and Use IF Condition

CREATE OR REPLACE FUNCTION check_even_odd(num INT)
RETURNS TEXT AS $$
BEGIN
    IF num % 2 = 0 THEN
        RETURN 'Even';
    ELSE
        RETURN 'Odd';
    END IF;
END;
$$ LANGUAGE plpgsql;

Example 4: Looping (Print numbers 1 to 5)

CREATE OR REPLACE FUNCTION count_up()
RETURNS VOID AS $$
DECLARE
    i INT := 1;
BEGIN
    WHILE i <= 5 LOOP
        RAISE NOTICE 'Number: %', i;
        i := i + 1;
    END LOOP;
END;
$$ LANGUAGE plpgsql;

Call IT
SELECT count_up();

Stored Procedure (vs Function)
CREATE PROCEDURE log_message(msg TEXT)
LANGUAGE plpgsql
AS $$
BEGIN
    RAISE NOTICE 'Log: %', msg;
END;
$$;

Call with:
CALL log_message('System started');

