
-- Group By 

select *
from parks_and_recreation.employee_demographics;

select gender, avg (age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender;

select occupation, salary
FROM parks_and_recreation.employee_salary
GROUP BY occupation, salary;

select gender, avg (age), max(age), min(age), count(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender;


-- order by 
select *
FROM parks_and_recreation.employee_demographics
 -- order by first_name;
-- order by first_name ASC; -- ascending 
order by first_name DESC;  -- descending 

select *
FROM parks_and_recreation.employee_demographics
order by gender, age;

-- having vs Where 
select gender, avg (age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
having avg(age) > 40;

select occupation, avg(salary)
FROM parks_and_recreation.employee_salary
where occupation like '%manager%'
group by occupation
having avg(salary) > 75000;




