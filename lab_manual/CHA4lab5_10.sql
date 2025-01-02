SELECT last_name,TRUNC(((sysdate-hire_date)/7),0) "Weeks_Worked"
FROM employees
WHERE department_id = 90
ORDER BY "Weeks_Worked" DESC;