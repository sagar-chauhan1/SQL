SELECT last_name name, LENGTH(last_name) length
FROM employees
WHERE LOWER(last_name) LIKE '&initial_letter%';