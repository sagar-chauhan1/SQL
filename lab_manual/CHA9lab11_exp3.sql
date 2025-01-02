-- Increase the salary of employees with job_id containing 'ACCOUNT' by 15%
UPDATE emp 
SET salary = ((salary/100)*15)+salary 
-- Filter employees with job_id containing 'ACCOUNT'
WHERE job_id 
LIKE '%ACCOUNT';