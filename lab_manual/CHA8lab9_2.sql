SELECT employee_id,last_name,salary
FROM employees
WHERE salary > (
		SELECT ROUND(AVG(salary))
		FROM employees);