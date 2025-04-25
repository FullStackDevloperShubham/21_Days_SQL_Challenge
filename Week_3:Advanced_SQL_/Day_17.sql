Basic Syntax

CREATE TRIGGER trigger_name
AFTER INSERT ON table_name
FOR EACH ROW
BEGIN
    -- SQL statements
END;

Example: Audit Log on INSERT

-- Audit table
CREATE TABLE user_audit (
    id SERIAL PRIMARY KEY,
    username TEXT,
    action TEXT,
    action_time TIMESTAMP
);

-- Trigger
CREATE OR REPLACE FUNCTION log_user_insert()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO user_audit (username, action, action_time)
    VALUES (NEW.username, 'INSERT', NOW());
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER after_user_insert
AFTER INSERT ON users
FOR EACH ROW
EXECUTE FUNCTION log_user_insert();


