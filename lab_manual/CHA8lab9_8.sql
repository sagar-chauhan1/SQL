SELECT last_name,salary
FROM employees
WHERE salary >ANY (
			SELECT salary
			FROM employees
			WHERE department_id=60);