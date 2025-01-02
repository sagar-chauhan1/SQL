SELECT manager_id,MIN(salary) "Lowest Salary"
FROM employees
HAVING manager_id IS NOT NULL
GROUP BY manager_id;