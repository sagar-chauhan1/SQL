SELECT emp.last_name,emp.hire_date,mgr.last_name "Manager",mgr.hire_date "Mgr hired"
FROM employees emp
JOIN employees mgr
ON emp.manager_id = mgr.employee_id
AND emp.hire_date < mgr.hire_date;