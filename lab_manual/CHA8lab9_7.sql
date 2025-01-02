SELECT emp.department_id, emp.last_name, emp.job_id
FROM employees emp
WHERE emp.department_id = (
    SELECT d.department_id
    FROM departments d
    WHERE d.department_name = 'Finance'
);
