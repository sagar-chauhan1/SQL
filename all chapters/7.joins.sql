-- 1. What department information can be retrieved along with location details?
SELECT DISTINCT d.department_name,l.street_address,l.postal_code,l.city,l.state_province
FROM locations l JOIN departments d
ON l.location_id = d.location_id;

-- 2. What employee information can be retrieved along with department details?
SELECT e.last_name,e.salary,e.department_id,d.department_name
FROM employees e join departments d
ON e.department_id=d.department_id;

-- 3. What employee information can be retrieved for specific departments?
SELECT e.last_name,e.salary,e.department_id,d.department_name
FROM employees e join departments d
ON e.department_id=d.department_id
WHERE e.department_id IN (20,30);

-- 4. What employee information can be retrieved for the 'Finance' department?
SELECT e.last_name,e.salary,e.department_id,d.department_name
FROM employees e join departments d
ON e.department_id=d.department_id
WHERE d.department_name='Finance';

-- 5. What employee information can be retrieved for a specific location?
SELECT e.last_name,e.job_id,e.department_id,d.department_name
FROM employees e 
JOIN departments d
ON e.department_id=d.department_id
JOIN locations l
ON d.location_id=l.location_id
WHERE l.city= 'Toronto' ;

-- 6. What employee and manager information can be retrieved?
SELECT e1.last_name "Employee Name",e1.salary "Emp_Salary",e2.last_name "Manager Name",e2.salary "Manager's Salary"
FROM employees e1
JOIN employees e2
ON e1.manager_id=e2.employee_id;

-- 7. What employee and manager information can be retrieved (including employees without managers)?
SELECT e1.last_name "Employee Name",e1.salary "Emp_Salary",e2.last_name "Manager Name",e2.salary "Manager's Salary"
FROM employees e1
LEFT JOIN employees e2
ON e1.manager_id=e2.employee_id;

-- 8. What manager information can be retrieved for a specific employee?
SELECT e2.last_name
FROM employees e1
JOIN employees e2
ON e1.department_id=e2.department_id
WHERE e1.last_name LIKE 'Higgins' ;

-- 9. What employee information can be retrieved where employee salary is greater than manager salary?
SELECT e1.last_name,e1.salary
FROM employees e1
JOIN employees e2
ON e1.manager_id=e2.employee_id
WHERE e1.salary>e2.salary ; 

-- 10. What employee information can be retrieved along with job grade?
SELECT e.last_name,e.job_id,d.department_name,j.grade_level
FROM employees e
JOIN departments d
ON e.department_id=d.department_id
JOIN job_grades j 
ON e.salary 
BETWEEN j.lowest_sal AND j.highest_sal;


--extra practice
-- 11. What are the last names of employees who were hired after the employee with the last name 'Taylor'?
SELECT e2.last_name
FROM employees e1
JOIN employees e2
ON e2.hire_date > e1.hire_date
WHERE e1.last_name = 'Taylor';

-- 12. What are the last name, hire date, manager's last name, and manager's hire date of employees
-- who were hired before their manager?
SELECT emp.last_name, emp.hire_date, mgr.last_name "Manager", mgr.hire_date "Mgr hired"
FROM employees emp
JOIN employees mgr
ON emp.manager_id = mgr.employee_id
AND emp.hire_date < mgr.hire_date;

-- 13. What are the last name, name length, manager's last name, and manager's name length of employees
-- whose last name is longer than their manager's last name?
SELECT emp.last_name, LENGTH(emp.last_name) "Name Length", mgr.last_name "Manager", LENGTH(mgr.last_name) "Manager Name Length"
FROM employees emp
JOIN employees mgr
ON emp.manager_id = mgr.employee_id
AND LENGTH(emp.last_name) > LENGTH(mgr.last_name);