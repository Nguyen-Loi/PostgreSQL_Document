-- 1. Create the user mia with password 'mial23'
-- 2. Create the role analyst_emp;
-- 3. Grant SELECT on all tables in the public schema to that role.
-- 4. Grant INSERT and UPDATE on the employees table to that role.
-- 5. Add the permission to create databases to that role.
-- 6. Assign that role to mia and test the privileges with that user.

-- 1
CREATE USER mia
WITH PASSWORD 'mia123';

-- 2
CREATE role analyst_emp;

-- 3
GRANT SELECT
ON ALL TABLES IN SCHEMA public
To analyst_emp;

-- 4
GRANT INSERT, UPDATE
ON TABLE public.employee
To analyst_emp;

-- 5
ALTER ROLE analyst_emp CREATEDB;

-- 6
GRANT analyst_emp TO mia;
