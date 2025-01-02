SELECT COUNT(DISTINCT manager_id) "MANAGERS"
FROM employees
where manager_id is not null;