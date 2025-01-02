SELECT last_name,salary
FROM employees
WHERE salary > 2000
AND commission_pct IS NULL;