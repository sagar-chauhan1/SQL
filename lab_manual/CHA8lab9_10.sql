SELECT last_name
FROM employees
WHERE salary IN(
		SELECT  MAX(salary)
		FROM employees
		);