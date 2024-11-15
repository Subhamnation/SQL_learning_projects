select *  
from parks_and_recreation.employee_demographics;

select * 
from parks_and_recreation.employee_salary;

select * 
from parks_and_recreation.employee_demographics;

select first_name, 
last_name, 
birth_date,
age + 15
from parks_and_recreation.employee_demographics;

#PEMDAS (order of calculation : Parenthesis --> Exponential --> Multiplication --> Division --> Addition --> Subtraction)

select first_name, 
last_name, 
birth_date,
age,
(age + 15) * 10 + 10
from parks_and_recreation.employee_demographics;

#Distict 

select distinct first_name
from parks_and_recreation.employee_demographics;

select distinct gender
from parks_and_recreation.employee_demographics;

select distinct first_name, gender
from parks_and_recreation.employee_demographics;


