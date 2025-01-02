SELECT job_id, MAX(salary) "highest salary",MIN(salary) "lowest salary",SUM(salary) "total salary",AVG(salary) "average salary"
FROM employees
GROUP BY job_id;

