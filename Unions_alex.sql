
-- Unions

-- select age, gender
select first_name, last_name
from parks_and_recreation.employee_demographics
union 
select first_name, last_name
from parks_and_recreation.employee_salary;

select first_name, last_name
from parks_and_recreation.employee_demographics
union distinct
select first_name, last_name
from parks_and_recreation.employee_salary;

select first_name, last_name
from parks_and_recreation.employee_demographics
union all
select first_name, last_name
from parks_and_recreation.employee_salary;

select first_name, last_name
from parks_and_recreation.employee_demographics
where age > 50;

select first_name, last_name, 'Old man' as label 
from parks_and_recreation.employee_demographics
where age > 50 and gender = "Male"
union 
select first_name, last_name, 'Old lady' as label 
from parks_and_recreation.employee_demographics
where age > 40 and gender = "Female"
union 
select first_name, last_name, 'Highly Paid Employee' as label 
from parks_and_recreation.employee_salary
where salary > 70000;


select first_name, last_name, 'Old man' as label 
from parks_and_recreation.employee_demographics
where age > 50 and gender = "Male"
union 
select first_name, last_name, 'Old lady' as label 
from parks_and_recreation.employee_demographics
where age > 40 and gender = "Female"
union 
select first_name, last_name, 'Highly Paid Employee' as label 
from parks_and_recreation.employee_salary
where salary > 70000
order by first_name, last_name;



