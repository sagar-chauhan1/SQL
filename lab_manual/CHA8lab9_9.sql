SELECT last_name,salary 
FROM employees e1
WHERE salary > (
			SELECT AVG(salary)
			FROM employees e2
			WHERE e1.department_id=e2.department_id);