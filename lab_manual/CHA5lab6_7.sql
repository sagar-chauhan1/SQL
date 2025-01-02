SELECT last_name,
DECODE (job_id, 'AD_PRES', 'A',
 'ST_MAN', 'B',
 'IT_PROG', 'C',
 'SA_REP', 'D',
 'ST_CLERK', 'E', 
 'O') AS "GRADES"
FROM employees;