👉 Roles
 Create a role:

 CREATE ROLE manager;

 Create a role with login:

 CREATE ROLE analyst WITH LOGIN PASSWORD 'password123';

 Assign a role to a user:

 GRANT manager TO analyst;

👉 GRANT

GRANT SELECT ON employees TO analyst;

Grant multiple permissions:

GRANT SELECT, INSERT, UPDATE ON employees TO analyst;

👉 REVOKE

REVOKE SELECT ON employees FROM analyst;

Revoke multiple permissions:

REVOKE INSERT, UPDATE ON employees FROM analyst;
