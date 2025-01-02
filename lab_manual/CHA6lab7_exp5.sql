SELECT 
  COUNT(CASE WHEN salary IS NOT NULL THEN employee_id END) AS salary_count,
  COUNT(CASE WHEN commission_pct IS NOT NULL THEN employee_id END) AS commission_count
FROM employees
WHERE department_id = 30;