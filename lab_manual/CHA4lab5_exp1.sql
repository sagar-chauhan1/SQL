SELECT last_name 
FROM employees
WHERE MONTHS_BETWEEN(SYSDATE,hire_date)/12 > 2;