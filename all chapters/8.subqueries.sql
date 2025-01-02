-- 1. Retrieve employees with the same department as the specified employee?
SELECT last_name,salary
FROM employees 
WHERE department_id IN (
    SELECT department_id
    FROM employees
    WHERE last_name = '&name');

-- 2. Retrieve employees with a salary higher than the average salary?
SELECT employee_id,last_name,salary
FROM employees
WHERE salary > (
    SELECT ROUND(AVG(salary))
    FROM employees);

-- 3. Retrieve employees with a department that has an employee with a last name containing 'u'?
SELECT employee_id,last_name,department_id 
FROM employees
WHERE department_id IN (
    SELECT department_id
    FROM employees
    WHERE last_name LIKE '%u%')
ORDER BY department_id;

-- 4. Retrieve employees with a department located in a specific location?
SELECT e.last_name,e.department_id,e.job_id,d.location_id
FROM employees e 
JOIN departments d
ON e.department_id=d.department_id
WHERE d.location_id IN (
    SELECT location_id 
    FROM departments 
    WHERE location_id=1700);

-- 5. Retrieve employees with a department located in a specific location?
SELECT e.last_name,e.department_id,e.job_id
FROM employees e 
JOIN departments d
ON e.department_id=d.department_id
WHERE d.location_id IN (
    SELECT location_id 
    FROM departments 
    WHERE location_id='&location_id');

-- 6. Retrieve employees with a manager who is the CEO (King)?
SELECT emp.last_name name,emp.salary,mgr.last_name manager
FROM employees mgr
JOIN employees emp
ON emp.manager_id=mgr.employee_id 
WHERE mgr.employee_id=(
    SELECT employee_id
    FROM employees
    WHERE last_name = 'King'
    AND
    manager_id IS NULL);

-- 7. Retrieve employees in the Finance department?
SELECT emp.department_id, emp.last_name, emp.job_id
FROM employees emp
WHERE emp.department_id = (
    SELECT d.department_id
    FROM departments d
    WHERE d.department_name = 'Finance');

-- 8. Retrieve employees with a salary higher than any employee in department 60?
SELECT last_name,salary
FROM employees
WHERE salary >ANY (
    SELECT salary
    FROM employees
    WHERE department_id=60);

-- 9. Retrieve employees with a salary higher than the average salary in their department?
SELECT last_name,salary 
FROM employees e1
WHERE salary > (
    SELECT AVG(salary)
    FROM employees e2
    WHERE e1.department_id=e2.department_id);

-- 10. Retrieve employees with the highest salary?
SELECT last_name
FROM employees
WHERE salary IN(
    SELECT  MAX(salary)
    FROM employees
    );

-- 11. Retrieve the second-highest salary?
SELECT MAX(salary) AS second_highest_salary
FROM employees
WHERE salary < (
    SELECT MAX(salary)
    FROM employees );

-- 12. Retrieve employee details with salary higher than the average salary in their department and last name containing 'u' or starting with 'U'?
SELECT e1.employee_id, e1.last_name, e1.salary
FROM employees e1
WHERE e1.salary > (
    SELECT AVG(e2.salary)
    FROM employees e2
    WHERE e1.department_id = e2.department_id)
AND
e1.last_name IN (
    SELECT e3.last_name
    FROM employees e3
    WHERE e3.last_name LIKE '%u%'
    OR e3.last_name LIKE 'U%');

-- 13. Retrieve employee details with salary lower than the average salary in department 20?
SELECT last_name, salary
FROM employees
WHERE salary < (SELECT AVG(salary)
FROM employees
WHERE department_id = 20);

-- 14. Retrieve employee details with manager 'Whalen'?
SELECT last_name
from employees 
where manager_id IN (select employee_id 
            from employees 
            where last_name = 'Whalen');

-- 15. Retrieve employee details with location 'Seattle'?
SELECT e.last_name, l.city
FROM employees e
JOIN departments d
ON (e.department_id = d.department_id)
JOIN locations l
ON (d.location_id = l.location_id)
WHERE d.location_id IN (SELECT l.location_id
FROM locations l
WHERE l.city = 'Seattle');

-- 16. Retrieve employee details with department 'Davies'?
SELECT last_name, department_id
FROM employees 
WHERE department_id IN (SELECT department_id 
FROM employees 
WHERE last_name = 'Davies');

-- 17. Retrieve employee details with the highest salary in their department?
SELECT e1.last_name, e1.department_id, e1.salary
FROM employees e1
WHERE e1.salary = (
    SELECT MAX(e2.salary)
    FROM employees e2
    WHERE e1.department_id = e2.department_id);