SELECT last_name,hire_date,
    ADD_MONTHS(hire_date, 5) AS service_date,
    NEXT_DAY(ADD_MONTHS(hire_date, 5), 'MONDAY') AS review_date
FROM employees;