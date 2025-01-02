SELECT manager_id,MIN(salary) "Lowest Salary"
FROM employees
GROUP BY manager_id;