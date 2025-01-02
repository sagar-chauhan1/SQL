--lab 2
-- 1. What is the structure of the DEPARTMENTS table?
DESC DEPARTMENTS;

-- 2. What are all the columns for all rows in the DEPARTMENTS table?
SELECT * 
FROM DEPARTMENTS;

-- 3. What is the structure of the EMPLOYEES table?
DESC EMPLOYEES;

-- 4. What are all the columns for all rows in the EMPLOYEES table?
SELECT * 
FROM EMPLOYEES;

-- 5. What are the employee_id, last_name, job_id, and hire_date (aliased as "Joining Date") for all employees?
SELECT employee_id, last_name, job_id, hire_date AS "Joining Date"
FROM employees;

-- 6. What are the distinct job_id values in the EMPLOYEES table?
SELECT DISTINCT job_id
FROM employees;

--lab 3
-- 7. What is the query to retrieve employee details with aliasing?
SELECT 
  employee_id id, 
  last_name name, 
  job_id job, 
  hire_date join_from
FROM employees;

-- 8. How can we retrieve employee details with concatenated last name and job id?
SELECT 
  employee_id, 
  last_name || ' , ' || job_id AS "Employee"
FROM employees;

--extra practice 
-- 9. Retrieve employee details in a comma-separated format
SELECT 
    -- Concatenate last name, job ID, hire date, and salary
    last_name || ',' || job_id || ',' || hire_date || ',' || salary 
    -- Alias the concatenated column as "Employee Details"
    "Employee Details"
-- Specify the table to retrieve data from
FROM employees;