SELECT last_name
from employees 
where manager_id IN (select employee_id 
			from employees 
			where last_name = 'Whalen');