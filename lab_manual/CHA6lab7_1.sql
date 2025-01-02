SELECT ROUND(MAX(salary)) "highest salary",
ROUND(MIN(salary)) "lowest salary",
ROUND(SUM(salary)) "total salary",
ROUND(AVG(salary)) "average salary"
FROM employees;