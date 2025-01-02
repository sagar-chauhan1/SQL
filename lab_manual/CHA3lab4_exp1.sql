SELECT last_name,job_id,salary
FROM employees
WHERE (job_id LIKE 'SA_REP' OR job_id LIKE 'ST_CLERK')
AND (salary NOT IN (2500,3500,7000));