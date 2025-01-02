SELECT e2.last_name
FROM employees e1
JOIN employees e2
ON e2.hire_date > e1.hire_date
WHERE e1.last_name = 'Taylor';

