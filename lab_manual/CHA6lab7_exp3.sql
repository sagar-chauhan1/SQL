SELECT d.department_name,COUNT(e.department_id) emp
FROM employees e
JOIN departments d
WHERE 'EMP'<3;