SELECT e.last_name,l.city
FROM employees e
JOIN departments d
ON (e.department_id = d.department_id)
JOIN locations l
ON (d.location_id = l.location_id)
WHERE d.location_id IN (SELECT l.location_id
FROM locations l
WHERE l.city = 'Seattle');