SELECT ROUND(MAX(AVG(salary))) "Maximum Of Average Salary"
FROM employees
GROUP BY department_id;