SELECT last_name,department_id
FROM employees
WHERE department_id IN(20,70)
ORDER BY last_name;