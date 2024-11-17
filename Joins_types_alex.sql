
-- joins 
select *
from parks_and_recreation.employee_demographics;
select *
from parks_and_recreation.employee_salary;

-- Inner Joins

select *
-- from parks_and_recreation.employee_salary;
from parks_and_recreation.employee_demographics
inner join parks_and_recreation.employee_salary
	on employee_demographics.employee_id = employee_salary.employee_id
;

select *
-- from parks_and_recreation.employee_salary;
from parks_and_recreation.employee_demographics as dem
inner join parks_and_recreation.employee_salary as sal
	on dem.employee_id = sal.employee_id
;

select dem.employee_id, age, occupation
from parks_and_recreation.employee_demographics as dem
inner join parks_and_recreation.employee_salary as sal
	on dem.employee_id = sal.employee_id
;
-- Outer Join 

select dem.employee_id, age, occupation
from parks_and_recreation.employee_demographics as dem
left join parks_and_recreation.employee_salary as sal
	on dem.employee_id = sal.employee_id
;

-- select dem.employee_id, age, occupation
select *
from parks_and_recreation.employee_demographics as dem
right join parks_and_recreation.employee_salary as sal
	on dem.employee_id = sal.employee_id
;

-- Self Join 

select *
from parks_and_recreation.employee_salary emp1
join parks_and_recreation.employee_salary emp2
	on emp1.employee_id + 1= emp2.employee_id;


select emp1.employee_id as emp_santa,
emp1.first_name as first_name_santa,
emp1.last_name as last_name_santa,
emp2.last_name as emp_name,
emp2.first_name as first_name_emp,
emp2.last_name as last_name_emp
from parks_and_recreation.employee_salary emp1
join parks_and_recreation.employee_salary emp2
	on emp1.employee_id + 1= emp2.employee_id;


-- Joinsing multiple table together 
select *
from parks_and_recreation.employee_demographics as dem
inner join parks_and_recreation.employee_salary as sal
	 on dem.employee_id = sal.employee_id
inner join parks_and_recreation.parks_departments pd 
	 on sal.dept_id = pd.department_id;

select *
from parks_and_recreation.parks_departments;


