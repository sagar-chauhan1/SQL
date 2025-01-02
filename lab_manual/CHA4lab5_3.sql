SELECT employee_id,last_name,salary,TRUNC(salary+(salary*16/100)) AS salary_16, TRUNC((salary+(salary*16/100))-salary) AS salary_diff
FROM employees;