SELECT e.last_name,e.job_id,d.department_name,j.grade_level
FROM employees e
JOIN departments d
ON e.department_id=d.department_id
JOIN job_grades j 
ON e.salary 
BETWEEN j.lowest_sal AND j.highest_sal;