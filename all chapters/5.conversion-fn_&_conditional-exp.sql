-- 1. What is an employee's current and expected salary after appraisal?
SELECT
last_name||' earns monthly '||salary||' but expects '||2*salary||' after appraisal.' "Appraised Salary"
FROM employees;

-- 2. How do you calculate an employee's service date and review date?
SELECT last_name,hire_date,
    ADD_MONTHS(hire_date, 5) AS service_date,
    NEXT_DAY(ADD_MONTHS(hire_date, 5), 'MONDAY') AS review_date
FROM employees;

-- 3. What is an employee's commission percentage?
SELECT last_name,TO_CHAR(commission_pct) || NVL2(commission_pct,' ','No commission') comm
FROM employees;

-- 4. On which day of the week did an employee join?
select last_name,TO_CHAR(hire_date,'DAY') joined_on
from employees 
where last_name = 'Davies';

-- 5. How do you assign grades to employees based on their job ID?
-- Using simple CASE statement
SELECT last_name,
CASE job_id WHEN 'AD_PRES' THEN 'A'
WHEN 'ST_MAN' THEN 'B'
WHEN 'IT_PROG' THEN 'C'
WHEN 'SA_REP' THEN 'D'
WHEN 'ST_CLERK' THEN 'E' 
ELSE 'O' END "GRADES"
FROM employees;

-- 6. Using searched CASE statement
SELECT last_name,
CASE 
    WHEN job_id = 'AD_PRES' THEN 'A'
    WHEN job_id = 'ST_MAN' THEN 'B'
    WHEN job_id = 'IT_PROG' THEN 'C'
    WHEN job_id = 'SA_REP' THEN 'D'
    WHEN job_id = 'ST_CLERK' THEN 'E' 
    ELSE 'O' 
END "GRADES"
FROM employees;

-- 7. How do you assign grades to employees based on their job ID using DECODE function?
SELECT last_name,
DECODE (job_id, 'AD_PRES', 'A',
 'ST_MAN', 'B',
 'IT_PROG', 'C',
 'SA_REP', 'D',
 'ST_CLERK', 'E', 
 'O') AS "GRADES"
FROM employees;

-- Extra Practice

-- 8. What is the hire time for an employee with the last name 'Taylor'?
SELECT TO_CHAR(hire_date, 'hh:mi:ss') jointime
FROM employees
WHERE last_name='Taylor';

-- 9. How do you determine the quarter of the year for each employee's hire date?
SELECT 
    hire_date,
    -- What quarter does the hire date fall into?
    CASE 
        WHEN EXTRACT(MONTH FROM hire_date) BETWEEN 1 AND 3 THEN 'Q1'
        WHEN EXTRACT(MONTH FROM hire_date) BETWEEN 4 AND 6 THEN 'Q2'
        WHEN EXTRACT(MONTH FROM hire_date) BETWEEN 7 AND 9 THEN 'Q3'
        WHEN EXTRACT(MONTH FROM hire_date) BETWEEN 10 AND 12 THEN 'Q4'
        ELSE 'Unknown'
    END AS quarter
FROM employees;

-- 10. How many months have passed since each employee's hire date?
SELECT hire_date,ROUND(MONTHS_BETWEEN(sysdate,hire_date)) "MONTHS" 
FROM employees;