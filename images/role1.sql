CREATE USER NguyenLoi
WITH PASSWORD 'NguyenLoi123';

-- Create roles
CREATE ROLE read_only; 
CREATE ROLE read_update;

-- Grant usage (already granted)
GRANT USAGE
ON SCHEMA public
TO read_only;

-- Grant SELECT on tables
GRANT SELECT
ON ALL TABLES IN SCHEMA public
To read_only;

-- Revoke some privileges
REVOKE DELETE, INSERT
ON ALL TABLES IN SCHEMA public
FROM read_update;

-- Grant role for user
GRANT read_only to NguyenLoi

-- Assign read_only to read_update role
GRANT read_only
TO read_update;

-- Grant all privileges on all tables in public to role
GRANT ALL
ON ALL TABLES IN SCHEMA public
TO read_update;

-- Assign role, to users
GRANT read_update
TO NguyenLoi;

-- DROP roles
DROP ROLE NguyenLoi;
DROP ROLE read_update;

-- Removing dependancies
DROP OWNED BY read_update;