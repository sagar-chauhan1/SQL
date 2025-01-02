SELECT
COUNT(*) AS total_employees,
SUM(DECODE(TO_CHAR(hire_date, 'YYYY'), '2005', 1,
'2006', 1,
'2007', 1,
'2008', 1,
0)) AS employees_hired_2005_TO_2008
FROM employees;

