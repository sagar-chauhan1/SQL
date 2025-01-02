-- 1. What object privilege must be granted to a user to allow them to query a table?
-- Answer: The SELECT privilege must be granted to a user to allow them to query a table.
GRANT SELECT ON table_name TO user_name;

-- 2. What object privilege must be granted to a user to allow them to create a table?
-- The CREATE TABLE privilege must be given to the user who wants to create a table.
GRANT CREATE ON SCHEMA schema_name TO user_name;

--3. Consider a scenario where you are a database administrator. You want to give a setup privileges on a table to all the users.What will make your job easier?
--It will be a better approach to grant all the privileges of tables To the user by setting them as public.
GRANT ALL PRIVILEGES ON table_name TO PUBLIC;

-- 4. what command will be used to change the password for user hr
alter user hr identified by mypass;

-- 5. Grant the UPDATE privilege on the EMPLOYEES table to the DEMO user, allowing them to grant this privilege to others.
grant update
on employees
to demo
with grant option;



-- 1. Grant another user privilege on your table and verify the privilege given.
grant select, update, insert, drop
on myemp
to demo;


-- 2. Grant another user privilege to manipulate data on countries table
grant select, insert, update, delete
on countries
to demo;

-- 3. Revoke privileges from the 'demo' user on the 'myemp' table
revoke select, update, insert, drop
on myemp
to demo;


revoke select, insert, update, delete
on countries
to demo;

