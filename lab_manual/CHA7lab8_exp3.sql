SELECT emp.last_name,LENGTH(emp.last_name) "Name Length",mgr.last_name "Manager",LENGTH(mgr.last_name) "Manager Name Length"
FROM employees emp
JOIN employees mgr
ON emp.manager_id=mgr.employee_id
AND LENGTH(emp.last_name) > LENGTH(mgr.last_name);