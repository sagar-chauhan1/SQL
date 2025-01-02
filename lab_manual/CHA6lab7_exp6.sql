SELECT department_id, employee_id, hire_date 
FROM employees
WHERE (department_id, hire_date) IN (
  SELECT department_id, MAX(hire_date)
  FROM employees
  GROUP BY department_id
);