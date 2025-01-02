--[1] Display the employee information whose name is David
SELECT * 
FROM employees 
WHERE name = 'David';

--[2] Describe locations table
DESCRIBE locations;

--[3] Display employee id and start date and end date from a job history table
SELECT employee_id, start_date, end_date 
FROM job_history;

--[4] Display all information from regions table
SELECT * 
FROM regions;

--[5] Display country id and name from countries table
SELECT country_id,country_name 
FROM countries;

--[6] Display department name whose id is 30
SELECT department_name 
FROM departments 
WHERE department_id = 30;

--[7] Subtract 4 from higher date column
SELECT hire_date - 4 AS hire_date
FROM employees;

--[8] Display first name department id like "Abel's department_id is 90."
SELECT first_name||'''s department id is '||department_id||'.'
FROM employees;

--[9] List the employees who are not assigned to any department
SELECT *
FROM employees
WHERE department_id IS NULL;

--[10] List the details of employee whose salary is greater than 2000 and commission is null
SELECT *
FROM employees
WHERE salary > 2000 AND commission_pct IS NULL;

--[11] display employee information whoe name ends with 's'
SELECT *
FROM employees
WHERE last_name LIKE '%s';

--[12] List the employee names, having 3rd character as 'r'
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '__r%' 
or first_name LIKE '__r%';

--[13] Give commission to one percent of their salaries to employees Having Commission Null
SELECT first_name, salary, commission_pct, salary * 0.01 AS commission
FROM employees
WHERE commission_pct IS NULL;

--[14] List the employee names, which are not eligible for the commission
SELECT first_name, last_name
FROM employees
WHERE commission_pct IS NULL;

--[15] List the employee names and Their job who does not report to anyone
SELECT first_name, last_name, job_id
FROM employees
WHERE manager_id IS NULL;

--[16] How many months did the president work for the company? round to the nearest whole number of months
SELECT ROUND(MONTHS_BETWEEN(sysdate, hire_date)) AS months_worked
FROM employees
WHERE job_id = 'AD_PRES';

--[17] Display last names starting with 'm' or 's'
SELECT last_name
FROM employees
WHERE last_name LIKE 'M%' OR last_name LIKE 'S%';

--[18] Display full name and department id of employees
SELECT first_name, last_name, department_id
FROM employees;

--[19] Display job id length and display job id in lower case
SELECT DISTINCT LOWER(job_id) AS job_id, LENGTH(job_id) AS job_id_length
FROM employees;

--[20] Display all columns of Regions
SELECT *
FROM regions;