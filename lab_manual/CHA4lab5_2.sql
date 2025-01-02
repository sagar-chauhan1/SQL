SELECT employee_id,last_name,salary,TRUNC(salary+(salary*16/100)) AS "Updated Salary" 
FROM employees;