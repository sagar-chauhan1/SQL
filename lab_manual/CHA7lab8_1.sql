SELECT DISTINCT d.department_name,l.street_address,l.postal_code,l.city,l.state_province
FROM locations l JOIN departments d
ON l.location_id = d.location_id;

