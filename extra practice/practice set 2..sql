--[1] display employee id,first name,salary and display and display annual salary by salary*12.
select employee_id,first_name,salary,12*salary as "Annual Salary"
from employees;

--[2] Display employee information who are present in department number 20
select * 
from employees 
where department_id = 20;

--[3] Display all jobs available in organisation from employees table
select distinct job_id
from employees;

--[4] Display employees full name use column Alice
select first_name||' '||last_name as "employee name"
from employees;

--[5] display output eg. Abel's job designation is SH_CLERK.
select last_name||'''s job designation is '||job_id||'.' as "Employee roles" 
from employees;

--[6] Display first name , department id and output eg. Abel's department ID is 90.
select first_name||'''s department id is '||department_id||'.' 
from employees;

--[7] Display employee information whose name is David
select * 
from employees 
where first_name = 'David';

--[8] Display employees who have hired on 23-NOV-07
select last_name,hire_date 
from employees 
where hire_date like '23-NOV-07';

--[9] Display city name whose postal code is 490231
select city 
from locations 
where postal_code = '490231';

--[10] Display job ID belongs to department 30
select distinct job_id 
from employees 
where department_id = '30';

--[11] Display actual departments present in employees
select department_name 
from departments 
where department_id in (select distinct department_id from employees);

--[12] Describe the structure of department table
desc departments;

--[13] Display first name last name and give allies as full name. 
--And display information of employee who's last name is Abel.
select first_name||' '||last_name as "Full Name"
from employees
where last_name = 'Abel';

--[14] Describe the structure of Regions table
desc Regions;

--[15] Describe the structure of jobs table
desc jobs;

--[16] Display actual value of job ids from employees
select job_title 
from jobs 
where job_id in (select job_id from employees);