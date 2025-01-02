SELECT last_name,salary
FROM employees
WHERE salary <(SELECT AVG(salary)
FROM employees
WHERE department_id = 20 );
