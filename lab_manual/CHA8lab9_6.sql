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