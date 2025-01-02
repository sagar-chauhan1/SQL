SELECT last_name,job_id,hire_date
FROM employees
WHERE last_name IN ('Taylor','Vargas')
ORDER BY hire_date;