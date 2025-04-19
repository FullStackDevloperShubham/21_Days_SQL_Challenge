
What is EXPLAIN ANALYZE?

EXPLAIN ANALYZE
SELECT * FROM users WHERE email = 'test@example.com';

Optimizing with Indexes

CREATE INDEX idx_users_email ON users(email);

-- Create a large dummy table
CREATE TABLE big_table (
    id SERIAL PRIMARY KEY,
    name TEXT,
    email TEXT
);

-- Insert a lot of data
INSERT INTO big_table (name, email)
SELECT md5(random()::text), md5(random()::text) || '@gmail.com'
FROM generate_series(1, 100000);

-- Query with EXPLAIN ANALYZE
EXPLAIN ANALYZE
SELECT * FROM big_table WHERE email = 'random_value@gmail.com';

-- Then create an index and try again
CREATE INDEX idx_email ON big_table(email);
