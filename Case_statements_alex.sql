-- Case statement 

select * 
from parks_and_recreation.employee_demographics;

select first_name,
last_name, age,
case 
	when age <= 30 then 'young'
    when age between 31 and 50 then 'old'
    when age >= 50 then 'On deaths door'
end as Age_bracket
from parks_and_recreation.employee_demographics;

-- Pay Increase and Bonus 
-- < 50000 = 6%
-- > 50000 = 7% 
-- Finance = 10% bonus 

select first_name, salary, 
 -- from parks_and_recreation.employee_salary;
case 
	when salary < 50000 then salary * 1.06
    when salary > 50000 then salary * 1.07
    -- when salary > 50000 then '6% increase'
end as salary_updated,
case 
	when dept_id = 6 then salary * 0.10
end as bonus
from parks_and_recreation.employee_salary;


select * 
from parks_and_recreation.employee_salary;
select * 
from parks_and_recreation.parks_departments;






