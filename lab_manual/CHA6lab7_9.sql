SELECT COUNT(last_name),department_id
FROM employees
HAVING COUNT(last_name) > 7
GROUP BY department_id;