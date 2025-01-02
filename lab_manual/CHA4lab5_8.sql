SELECT last_name,TRUNC(MONTHS_BETWEEN(sysdate,hire_date),0) duration
FROM employees
ORDER BY duration;
