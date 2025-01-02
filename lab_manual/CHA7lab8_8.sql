SELECT e2.last_name
FROM employees e1
JOIN employees e2
ON e1.department_id=e2.department_id
WHERE e1.last_name LIKE 'Higgins' ;