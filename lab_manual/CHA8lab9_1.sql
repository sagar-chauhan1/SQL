SELECT last_name,salary
FROM employees 
WHERE department_id IN (
			SELECT department_id
			FROM employees
			WHERE last_name = '&name');