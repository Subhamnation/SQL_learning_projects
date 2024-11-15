
-- Where clause 

select * 
from parks_and_recreation.employee_salary
-- where first_name = 'Leslie';
-- where salary >= 50000;
where salary <= 50000;

select *
from parks_and_recreation.employee_demographics
-- where gender != 'Female';
where birth_date > '1985-01-01';

-- AND or NOT -- Logical Operators 
select *
from parks_and_recreation.employee_demographics
where gender != 'Female'
and birth_date > '1985-01-01';

select *
from parks_and_recreation.employee_demographics
where gender != 'Female'
or birth_date > '1985-01-01';

select *
from parks_and_recreation.employee_demographics
where not gender = 'Female'
or birth_date > '1985-01-01';

select *
from parks_and_recreation.employee_demographics
where (first_name = 'Leslie' and age = 44) or age > 55;

-- Like statement 
-- % and _
select * 
from parks_and_recreation.employee_demographics
 -- where first_name like 'Jer%'
 -- where first_name like 'er%'
 where first_name like 'A%';






