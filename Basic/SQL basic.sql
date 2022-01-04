use  sys;
create table employees(
emp_id int not null,
first_name varchar(20),
last_name varchar(20),
salary int,
primary key (emp_id)
);
select * from employees;
describe employees;
alter table employees add column contact int(10);
alter table employees rename column contact to contact_details;

truncate table employees;
select * from employees;

drop table employees;
select * from employees;

----------------------------------------------------------
create table emp_detail(
emp_id int not null,
first_name varchar(20),
last_name varchar(20),
salary int,
primary key(emp_id)
);

select * from emp_detail;
insert into emp_detail(emp_id,first_name,last_name,salary)values(1,'a','b',15000);
insert into emp_detail(emp_id,first_name,last_name,salary)values(6,'z','b',15000);
update emp_detail set last_name='zore' where emp_id=1;
delete from emp_detail where emp_id in (1,2);

---------------------------------------------------------------------------------------
create table product1(
product_id int,
product_name varchar(20)
);
select * from product1;
insert into product1(product_id, product_name)values(6,'Nicon');

create table product2(
product_id int,
product_name varchar(20)
);
select * from product2;
insert into product2(product_id, product_name)values(10,'playstation');
select product_name from product1
union
select product_name from product2;

select product_name from product1
union all 
select product_name from product2;



----------------------------------------------------------------------------------------------

create table MI(
poss int not null,
player_name varchar(20),
roll varchar(20),
best_fig int,
primary key(poss)
);
select * from MI;
insert into MI(poss,player_name ,roll,best_fig)values(6,'k','bat',10);
insert into MI(poss,player_name ,roll,best_fig)values(5,'d','bat',90);
select * from MI where poss=5;
select * from MI where roll='bat' or best_fig>=90; 
select * from MI where roll='bat' and  best_fig>=90; 

select * from MI where best_fig between 100 and 120;
select * from MI where roll like 'ba%';
select * from MI where best_fig in (10,100,50);
select distinct(roll) from MI;
select max(best_fig) from MI;
select min(best_fig) from MI;
select count(*) from MI;
select sum(best_fig) from MI;
select avg(best_fig) from MI;

-------------------------------------------------------------------------------------------------------------

create table IPL_CHAMPION(
Year_ int not null,
winner varchar(20),
runner_up varchar(20),
Man_of_the_match varchar(20),
orane_cap_run int,
purple_cap_wicket int,
primary key(Year_)
);
select * from IPL_CHAMPION;
insert into IPL_CHAMPION(Year_, winner, runner_up, Man_of_the_match, orane_cap_run, purple_cap_wicket)values(2021,'CSK','KKR','RHUTURAJ',558,29);
select winner,max(orane_cap_run),Man_of_the_match,purple_cap_wicket from IPL_CHAMPION group by winner;
select year_,winner,Man_of_the_match from IPL_CHAMPION group by winner having count(winner)>=2;

select * from IPL_CHAMPION;
select * from IPL_CHAMPION order by purple_cap_wicket asc;
select* from IPL_CHAMPION order by orane_cap_run desc;



----------------------------------------------------------------------------------------------------------
create table student(
s_id int not null,
f_name varchar(20),
l_name varchar(20),
fee int,
dept_id int,
primary key(s_id)
);
select * from student;
insert into student(s_id, f_name, l_name, fee, dept_id)values(4,'surya','yadav',39000,101);

create table department(
dept_id int not null,
dept_name varchar(20),
dept_loc varchar(20)
);
select * from department;
insert into department(dept_id, dept_name, dept_loc)values(104,'compp','chennai');

select s.dept_id,s.f_name,s.fee,d.dept_name,d.dept_loc
from student s
inner join department d
on s.dept_id=d.dept_id;

select s.dept_id,s.f_name,s.l_name,s.fee,d.dept_name,d.dept_loc
from student s
left join department d
on s.dept_id=d.dept_id; 

select s.f_name,s.fee,d.dept_name
from student s
right join department d
on s.dept_id=d.dept_id; 


select s.f_name,s.fee,d.dept_name
from student s
left join department d
on s.dept_id=d.dept_id
union
select s.f_name,s.fee,d.dept_name
from student s
right join department d
on s.dept_id=d.dept_id; 





























































