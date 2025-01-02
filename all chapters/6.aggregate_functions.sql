-- 1. What are the overall salary statistics in the company?
SELECT 
  ROUND(MAX(salary)) "highest salary",
  ROUND(MIN(salary)) "lowest salary",
  ROUND(SUM(salary)) "total salary",
  ROUND(AVG(salary)) "average salary"
FROM employees;

-- 2. How many employees are there in total?
SELECT COUNT(first_name) "Total Employees"
FROM employees;

-- 3. What are the salary statistics for each job ID?
SELECT 
  job_id, 
  MAX(salary) "highest salary",
  MIN(salary) "lowest salary",
  SUM(salary) "total salary",
  AVG(salary) "average salary"
FROM employees
GROUP BY job_id;

-- 4. How many employees are there for each job ID?
SELECT 
  job_id,
  COUNT(last_name) no_of_emp
FROM employees
GROUP BY job_id;

-- 5. How many employees have a specific job ID?
SELECT COUNT(last_name)
FROM employees
WHERE job_id = '&job_id';

-- 6. How many unique managers are there in the company?
SELECT COUNT(DISTINCT manager_id) "MANAGERS"
FROM employees
WHERE manager_id IS NOT NULL;

-- 7. What is the difference between the highest and lowest salaries in the company?
SELECT MAX(salary) - MIN(salary) "Diff"
FROM employees;

-- 8. How many employees are there for each department ID?
SELECT 
  department_id,
  COUNT(last_name) no_of_emp
FROM employees
GROUP BY department_id;

-- 9. Which department IDs have more than 7 employees?
SELECT 
  COUNT(last_name),
  department_id
FROM employees
GROUP BY department_id
HAVING COUNT(last_name) > 7;

-- 10. What is the lowest salary for each manager ID?
SELECT 
  manager_id,
  MIN(salary) "Lowest Salary"
FROM employees
GROUP BY manager_id;

-- 11. What is the lowest salary for each manager ID, excluding null manager IDs?
SELECT 
  manager_id,
  MIN(salary) "Lowest Salary"
FROM employees
GROUP BY manager_id
HAVING manager_id IS NOT NULL;

-- 12. What is the lowest salary for each manager ID, with a salary less than 6000?
SELECT 
  salary,
  manager_id,
  MIN(salary) "Lowest Salary"
FROM employees
GROUP BY manager_id
HAVING MIN(salary) < 6000
ORDER BY salary DESC;



--extra practice
-- 13. What are the overall employee statistics in the company, including the number of employees hired between 2005 and 2008?
SELECT
COUNT(*) AS total_employees,
SUM(DECODE(TO_CHAR(hire_date, 'YYYY'), '2005', 1,
'2006', 1,
'2007', 1,
'2008', 1,
0)) AS employees_hired_2005_TO_2008
FROM employees;

-- 14. What is the maximum average salary for each department in the company?
SELECT ROUND(MAX(AVG(salary))) "Maximum Of Average Salary"
FROM employees
GROUP BY department_id;

-- 15. What are the departments with less than 3 employees or the department with the maximum number of employees?
-- a. What are the departments with less than 3 employees?
SELECT 
  d.department_name, 
  COUNT(e.employee_id) AS employee_count
FROM employees e
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name
HAVING COUNT(e.employee_id) < 3
ORDER BY employee_count DESC;

-- b. What is the department with the maximum number of employees?
SELECT d.department_name, COUNT(e.employee_id) AS employee_count
FROM employees e
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name
ORDER BY COUNT(e.employee_id) DESC
LIMIT 1;

-- 16. What is the department with the least number of employees?
SELECT 
  d.department_name, 
  COUNT(e.employee_id) AS employee_count
FROM employees e
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name
ORDER BY COUNT(e.employee_id) ASC
LIMIT 1;

-- 17. How many employees are there in department 30 with salary and commission?
SELECT 
  COUNT(CASE WHEN salary IS NOT NULL THEN employee_id END) AS salary_count,
  COUNT(CASE WHEN commission_pct IS NOT NULL THEN employee_id END) AS commission_count
FROM employees
WHERE department_id = 30;

-- 18. What are the latest/last hired employees in each department?
SELECT department_id, employee_id, hire_date 
FROM employees
WHERE (department_id, hire_date) IN (
  SELECT department_id, MAX(hire_date)
  FROM employees
  GROUP BY department_id
);