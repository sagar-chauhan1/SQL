SELECT e1.employee_id, e1.last_name, e1.salary
FROM employees e1
WHERE e1.salary > (
    SELECT AVG(e2.salary)
    FROM employees e2
    WHERE e1.department_id = e2.department_id)
AND
e1.last_name IN (
    SELECT e3.last_name
    FROM employees e3
    WHERE e3.last_name LIKE '%u%'
    OR e3.last_name LIKE 'U%');






