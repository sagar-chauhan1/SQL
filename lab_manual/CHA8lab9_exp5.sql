SELECT last_name,department_id
FROM employees 
WHERE department_id IN (SELECT department_id 
FROM employees 
WHERE last_name = 'Davies');