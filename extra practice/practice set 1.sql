--[1] display last_name,first_name,department_name of all employees
-- natural join
select first_name,last_name,department_name 
from employees natural join departments;

--[2] Display list of region id region name and country name
--Using clause
select region_id,region_name,country_name from regions join countries using (region_id);
--other way
select r.region_id,r.region_name,c.country_name from regions r join countries c on (r.region_id=c.region_id);

--[3] Display department name city name as well as employee name
--On clause
select e.first_name||' '||e.last_name "employee name",d.department_name,l.city 
from employees e 
join departments d
on(e.department_id=d.department_id) 
join locations l 
on(d.location_id=l.location_id);

--[4] Display All employee information present in Depaartment 80 with its department name
Select * From employees where department_id = 80;

--[5] Display job ID and job title of employees.
select e.last_name||' '||e.first_name "employee name",e.job_id,j.job_title 
from employees e join
jobs j 
on (e.job_id=j.job_id);

--[6] Display Last name, job, department number, department name for all employees who work in Toronto.
select e.last_name,e.job_id,e.department_id,d.department_name 
from employees e 
join departments d 
on (e.department_id=d.department_id)
join locations l
on (d.location_id=l.location_id)
where l.city = 'Toronto';

--[7] display last name,department name and department location
select e.last_name,d.department_name,l.city
from employees e 
join departments d 
on (e.department_id=d.department_id)
join locations l
on (d.location_id=l.location_id);

--[8] list employee name and department name for all the clerks in the company
select e.last_name,d.department_name 
from employees e join departments d 
on(e.department_id=d.department_id)
where job_id like '%CLERK';

--[9] Display employee id employees last name for all employees who work in a department with any employee whose last name contains the letter U.
select e.employee_id,e.last_name
from employees e join departments d
on(e.department_id=d.department_id)
join locations l
on(d.location_id=l.location_id);

--[10] display the employee id ,last name and salary of all employees who earn more than the average salary of all employees in the company. order by salary.
select employee_id,last_name,salary 
from employees 
where salary > (select avg(salary) from employees);

--[11] Display last name and salary of every employee who report to King
select e.last_name,e.salary
from employees e join employees m
on(e.manager_id=m.employee_id)
where m.last_name = 'King';

--[12] list all employees whose salary is more is more than the Salary of any employee from department 60.
select e.last_name,e.salary
from employees e join departments d
on(e.department_id=d.department_id)
WHERE salary > any (select salary from employees where department_id = 60);

