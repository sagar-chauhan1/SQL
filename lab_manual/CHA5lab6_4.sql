select last_name,TO_CHAR(hire_date,'DAY') joined_on
from employees 
where last_name = 'Davies';