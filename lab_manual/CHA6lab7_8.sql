SELECT department_id,COUNT(last_name) no_of_emp
FROM employees
GROUP BY department_id;