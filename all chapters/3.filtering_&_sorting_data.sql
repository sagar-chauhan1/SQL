-- 1. What employees have a salary greater than 12000?
SELECT last_name, salary
FROM employees
WHERE salary > 12000;

-- 2. What are the details of the employee with ID 175?
SELECT *
FROM employees
WHERE employee_id = 175;

-- 3. What employees have a salary not between 5000 and 12000?
SELECT last_name, salary
FROM employees
WHERE salary NOT BETWEEN 5000 AND 12000;

-- 4. What employees have the last name 'Taylor' or 'Vargas', and what are their hire dates?
SELECT last_name, job_id, hire_date
FROM employees
WHERE last_name IN ('Taylor', 'Vargas')
ORDER BY hire_date;

-- 5. What employees are in departments 20 or 70, and what are their last names?
SELECT last_name, department_id
FROM employees
WHERE department_id IN (20, 70)
ORDER BY last_name;

-- 6. What employees have a salary between 5000 and 12000 in departments 10 or 20?
SELECT last_name, salary
FROM employees
WHERE salary BETWEEN 5000 AND 12000
AND department_id IN (10, 20);

-- 7. What employees were hired in June?
SELECT last_name, hire_date
FROM employees
WHERE hire_date LIKE '%06';

-- 8. What employees have no manager?
SELECT last_name, job_id
FROM employees
WHERE manager_id IS NULL;

-- 9. What employees have a commission, and what are their commission percentages?
SELECT last_name, salary, commission_pct
FROM employees
WHERE commission_pct IS NOT NULL
ORDER BY commission_pct DESC;

-- 10. What employees have a salary greater than a specified minimum salary?
SELECT last_name, salary
FROM employees
WHERE salary > &minimum_salary;

-- 11. What employees have a specified manager ID, and what are their details ordered by a specified column?
SELECT last_name
FROM employees
WHERE manager_id = '&manager_id'
ORDER BY &SORT_by;

-- 12. What employees have a last name starting with two characters followed by 'a'?
SELECT last_name
FROM employees
WHERE last_name LIKE '__a%';

-- 13. What employees have a last name containing both 'a' and 'i'?
SELECT last_name
FROM employees
WHERE last_name LIKE '%a%'
AND last_name LIKE '%i%';

-- Extra Practice

-- 14. What are the details of sales representatives and stock clerks with salaries other than 2500, 3500, and 7000?
SELECT last_name,job_id,salary
FROM employees
WHERE (job_id LIKE 'SA_REP' OR job_id LIKE 'ST_CLERK')
AND (salary NOT IN (2500,3500,7000));

-- 15. Which employees have a commission percentage of 20%?
SELECT last_name,salary,commission_pct
FROM employees
WHERE commission_pct='.20';

-- 16. Who are the presidents in the company?
SELECT employee_id,last_name 
FROM employees
WHERE job_id LIKE '%PRES%';

-- 17. What are the details of employees in department 80, excluding Abel?
SELECT *
FROM employees
WHERE department_id=80
AND last_name NOT IN ('Abel');

-- 18. How can we display the last name and job ID of employees in department 80?
SELECT last_name||'-'||job_id AS "Employee Details"
FROM employees
WHERE department_id = 80;

-- 19. Who are the employees with no manager?
SELECT last_name,job_id
FROM employees
WHERE manager_id IS NULL;

-- 20. Which employees are not assigned to any department?
SELECT last_name,job_id
FROM employees
WHERE department_id IS NULL;

-- 21. What are the details of employees with a salary greater than 2000 and no commission?
SELECT last_name,salary
FROM employees
WHERE salary > 2000
AND commission_pct IS NULL;