SELECT INITCAP(last_name) name, LENGTH(last_name) length
FROM employees
WHERE last_name LIKE 'J%' OR last_name LIKE 'M%';