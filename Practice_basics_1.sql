create database school;

create database if not exists school;

drop database school; 
drop database school; 

drop database if exists school; 

create database college;
use college;
show databases;

##DDL
create database school;
use school;

create table course(
cid INT,
cname varchar(50)
);

##DML 

insert into course(cid,cname)
values(1,'Physics'),
(2,'Math');

## To see all the values from a table
select * from course;

# To see all the tables in a given database 
show tables;






