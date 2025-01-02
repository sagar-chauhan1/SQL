SELECT last_name,salary
FROM employees 
WHERE salary BETWEEN 5000 AND 12000
AND department_id IN (10,20);

