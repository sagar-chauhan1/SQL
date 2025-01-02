-- 1.Create a table to store employee information
CREATE TABLE myemp (
  employee_id number (5),  -- Unique identifier for each employee
  last_name varchar2(20),  -- Last name of the employee
  first_name varchar2(20),  -- First name of the employee
  salary number(15),  -- Salary of the employee
  department_number number(10)  -- Department number of the employee
);

-- 2.Describe the table structure
DESCRIBE myemp;

-- 3.Insert a new employee record
INSERT INTO myemp
VALUES
(2,'bade','ravi',25000,30);

-- 4.Insert another employee record with column names specified
INSERT INTO myemp
(employee_id,last_name,first_name,salary,department_number)
VALUES 
(2,'chaudhar','sanket',15000,15);

-- 5.check if the data is added
SELECT * FROM myemp;

-- 6.Create a reusable script to insert employee records
INSERT INTO myemp
VALUES
('&employee_id','&last_name','&first_name','&salary','&department_number');

-- 7.check if the data is added
SELECT * FROM myemp;

-- 8.Make new insertions permanent in the table
COMMIT;

-- 9.Update the last name of an employee with employee_id = 3
UPDATE myemp
SET last_name = 'jadhav'
WHERE employee_id = 3;

-- 10.Update the salary of employees with salary less than 900
UPDATE myemp
SET salary = 1000
WHERE salary < 900;

-- 11. view updated dat in the tablee
SELECT * FROM myemp;

-- 12.Delete a record from table
DELETE FROM myemp 
WHERE salary < 24000;

-- 13.Retrieve all employee records after deletion
SELECT * FROM myemp;

-- 14.Commit the changes
COMMIT;



-- 1.Insert new employee records into the myemp table
INSERT INTO myemp (employee_id, last_name, first_name, salary, department_number)
VALUES 
(5, 'sharma', 'shankar', 15000, 15);
INSERT INTO myemp (employee_id, last_name, first_name, salary, department_number)
VALUES 
(6, 'sharma', 'manohar', 15000, 15);

-- 2. check if the records are added in the table
SELECT * FROM myemp;

-- 3.Create a savepoint to mark the current state of the transaction
SAVEPOINT s1;

-- 4.Delete all records from the myemp table
DELETE FROM myemp;

-- 5. confirm if the table is empty
SELECT * FROM myemp;

-- 6.Rollback the transaction to the Most recent delete operation
ROLLBACK TO SAVEPOINT s1;

-- 7.Confirm if the deleted row is still in the table
SELECT * FROM myemp;

-- 8.Commit the transaction to make the changes permanent
COMMIT;





--extra practice

-- Question 1

-- Update the salary to 5000 for all employees to whom the highest number of people report
UPDATE myemp
SET salary = 5000
WHERE employee_id IN (
    SELECT manager_id
    FROM (
        SELECT manager_id, COUNT(employee_id) AS report_count
        FROM myemp
        GROUP BY manager_id
    )
    ORDER BY report_count DESC
    FETCH FIRST ROW ONLY
); 


--Question 2
UPDATE employees
SET manager_id = (SELECT employee_id FROM employees WHERE job_id = 'PRESIDENT')
WHERE employee_id IN (
    SELECT manager_id
    FROM employees
    GROUP BY manager_id
    HAVING COUNT(employee_id) = 3
);

-- Question 3
-- Increase the salary of employees with job_id containing 'ACCOUNT' by 15%
UPDATE emp 
SET salary = ((salary/100)*15)+salary 
-- Filter employees with job_id containing 'ACCOUNT'
WHERE job_id 
LIKE '%ACCOUNT';