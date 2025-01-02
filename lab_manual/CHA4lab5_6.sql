SELECT last_name name, LENGTH(last_name) length
FROM employees
WHERE last_name LIKE '&initial_letter%';