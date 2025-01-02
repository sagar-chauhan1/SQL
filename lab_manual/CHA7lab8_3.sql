SELECT e.last_name,e.salary,e.department_id,d.department_name
FROM employees e join departments d
ON e.department_id=d.department_id
WHERE e.department_id IN (20,30);