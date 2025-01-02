SELECT e1.last_name "Employee Name",e1.salary "Emp_Salary",e2.last_name "Manager Name",e2.salary "Manager's Salary"
FROM employees e1
LEFT JOIN employees e2
ON e1.manager_id=e2.employee_id;