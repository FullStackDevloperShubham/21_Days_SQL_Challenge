📦 Create a Table with JSONB Column


CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name TEXT,
  info JSONB
);

 Insert JSONB Data

 INSERT INTO users (name, info) VALUES
('Alice', '{"age": 25, "skills": ["React", "Node"], "location": {"city": "Pune", "state": "MH"}}'),
('Bob', '{"age": 30, "skills": ["Python", "Django"], "location": {"city": "Mumbai", "state": "MH"}}');

🔎 Query JSON Data

SELECT * FROM users
WHERE info->>'age' = '25';

➤ Extract Nested Value (City)

 
 SELECT * FROM users
WHERE info->'skills' ? 'React';

🔄 Update JSONB Field

UPDATE users
SET info = jsonb_set(info, '{age}', '28')
WHERE name = 'Alice';

 Indexing for Speed
 CREATE INDEX idx_users_info ON users USING GIN (info);

📌 Extra: Check if Key Exists

SELECT * FROM users
WHERE info ? 'location';
