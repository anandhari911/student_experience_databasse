create database project;
use project;
create table employee_project
( 
    name varchar(20),
    age int,
    exp int
);
insert into employee_project values("Akshay",28,2),("John",27,3),("Harsh",26,1),("Sara",28,5),("Ritika",23,0);
select * from employee_project;
select * from employee_project where age>26;
select * from employee_project where exp>1;
select *, rank() over(order by exp) as total_rank from employee_project;
select min(age) as young_age from employee_project;
select * from employee_project where age between 24 and 28;
select avg(age) as average_age from employee_project;
select sum(exp) as total_experience from employee_project;
insert into employee_project values("Harsh",26,2);
select name from employee_project where name like 's%';
select max(age)-min(age) as range_employee from employee_project;
select age,count(*) as same_age from employee_project group by age having count(*)>1 order by age;
select * from employee_project order by age;
select * from employee_project order by exp desc;
select count(*) from employee_project;
select max(age) as oldest from employee_project;
select max(exp) from employee_project;
select * from employee_project where exp=0;
select min(exp) from employee_project;
select name from employee_project where name like '%a%';
select avg(exp) as average_experience from employee_project;
select *,row_number() over(order by age) as row_age from employee_project;
alter table employee_project add column id int auto_increment primary key;
