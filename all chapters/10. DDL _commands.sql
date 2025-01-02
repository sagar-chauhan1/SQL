-- Question 1: Create a table named mydept to store department information
create table mydept (
    -- deptno is the primary key, uniquely identifying each department
    deptno number(7) constraint dptno_pk primary key,
    -- deptname stores the name of each department, with a maximum length of 25 characters
    deptname varchar2(25));

-- Question 2: Use the desc command to display the structure of the mydept table
desc mydept;

-- Question 3: Create a table named myemp1 to store employee information
CREATE TABLE myemp1 (
    -- empid is the primary key, uniquely identifying each employee
    empid number(7) CONSTRAINT eid_pk PRIMARY KEY,
    -- last_name stores the last name of each employee, with a maximum length of 25 characters
    last_name varchar2(25),
    -- firstname stores the first name of each employee, with a maximum length of 25 characters
    firstname varchar2(25),
    -- dept_id stores the department ID of each employee, referencing the mydept table
    dept_id number(7),
    -- deptno_fk is a foreign key constraint, ensuring data consistency between myemp1 and mydept
    CONSTRAINT deptno_fk FOREIGN KEY(dept_id)
    REFERENCES mydept (deptno));

-- Question 4: Use the desc command to display the structure of the myemp1 table
desc myemp1;

-- Question 5: Add a new column named commission to the myemp1 table
alter table myemp1 add (commission number(10));

-- Question 6: Use the desc command to display the updated structure of the myemp1 table
desc myemp1;

-- Question 7: Modify the last_name column in the myemp1 table to increase its maximum length to 30 characters
alter table myemp1 modify (last_name varchar2(30));

-- Question 8: Use the desc command to display the updated structure of the myemp1 table
desc myemp1;

-- Question 9: Drop the firstname column from the myemp1 table
alter table myemp1 drop (firstname);

-- Question 10: Create a table named logemp to store employee log information
create table logemp(
    -- empid stores the employee ID, with a maximum length of 10 digits
    empid number(10),
    -- last_name stores the last name of each employee, with a maximum length of 25 characters
    last_name varchar2(25),
    -- first_name stores the first name of each employee, with a maximum length of 25 characters
    first_name varchar2(25),
    -- sal stores the salary of each employee, with a maximum length of 10 digits
    sal number(10),
    -- dno stores the department number of each employee, with a maximum length of 10 digits
    dno number(10)
);

-- Question 11: Make the logemp table read-only to prevent modifications
alter table logemp read only;

-- Question 12: Add a new column named job_id to the logemp table
alter table logemp add (job_id varchar(10));

-- Question 13: Make the logemp table read-write to allow modifications
alter table logemp read write;

-- Question 14: Drop the deptno_fk constraint from the myemp1 table
alter table myemp1 drop constraint deptno_fk cascade;

-- Question 15: Drop the dptno_pk constraint from the mydept table
alter table mydept drop constraint dptno_pk cascade;

-- Question 16: Drop the myemp1 table
drop table myemp1 cascade constraints;

-- Question 17: Drop the mydept table
drop table mydept cascade constraints;

-- Question 18: Drop the logemp table
drop table logemp cascade constraints;


--Extra practise
-- question 1: Add a check constraint to ensure the 'firstname' column is in uppercase
alter table myemp1 add constraint ename_upper check(firstname = upper(firstname));

-- question 2: Add a check constraint to ensure the 'salary' column is within a specific range
alter table myemp1 add constraint rangeof_salary check(salary BETWEEN 3000 AND 10000);