SELECT salary,manager_id,MIN(salary) "Lowest Salary"
FROM employees
HAVING MIN(salary) < 6000
ORDER BY salary DESC
GROUP BY manager_id;