-- Limit and Aliasing 

select *
from parks_and_recreation.employee_demographics
order by age DESC
limit 2, 1;

select gender, avg(age) as avg_age
from parks_and_recreation.employee_demographics
group by gender
having avg(age) > 40;