SELECT hire_date,ROUND(MONTHS_BETWEEN(sysdate,hire_date)) "MONTHS" 
FROM employees;
