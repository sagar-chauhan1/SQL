SELECT 
    hire_date,
    CASE 
        WHEN hire_date LIKE '%JAN%' OR hire_date LIKE '%FEB%' OR hire_date LIKE '%MAR%' THEN 'Q1'
        WHEN hire_date LIKE '%APR%' OR hire_date LIKE '%MAY%' OR hire_date LIKE '%JUN%' THEN 'Q2'
        WHEN hire_date LIKE '%JUL%' OR hire_date LIKE '%AUG%' OR hire_date LIKE '%SEP%' THEN 'Q3'
        WHEN hire_date LIKE '%OCT%' OR hire_date LIKE '%NOV%' OR hire_date LIKE '%DEC%' THEN 'Q4'
        ELSE 'Unknown'
    END AS quarter
FROM employees;