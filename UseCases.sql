--create database SQLUSECASE;

--use SQLUSECASE;

--CREATE TABLE t_emp(
--Emp_id int primary key identity(1001,2),
--Emp_Code varchar(20),
--Emp_f_name varchar(20) not null,
--Emp_m_name varchar(20),
--Emp_l_name varchar(20),
--Emp_DOB datetime check((year(getdate())-year(Emp_DOB))>18),
--Emp_DOJ datetime not null
--);

--insert into t_emp(Emp_code,Emp_f_name,Emp_m_name,Emp_l_name,Emp_DOB,Emp_DOJ)
--values ('OPT20110105','Manmohan',null,'singh','1983-02-10','2010-05-25'),
--('OPT20100915','Alfred','Joseph','Lawrence','1988-02-28','2010-06-26');
--drop table t_emp;
--select * from t_emp;

--CREATE TABLE t_activity(
--Activity_id int primary key identity(1,1),
--Activity_description varchar(50)
--);

--insert into t_activity values('Code Analysis'),('Lunch'),('Coding'),
--('Knowledge Transition'),('Database');
--select * from t_activity;

--CREATE TABLE t_atten_det(
--Atten_id int primary key identity(1001,1),
--Emp_id int foreign key references t_emp(Emp_id),
--Activity_id int foreign key references t_activity(Activity_id),
--Atten_start_datetime datetime,
--Atten_end_hrs int
--);
--insert into t_atten_det (Emp_id,Activity_id,Atten_start_datetime,Atten_end_hrs) 
--values(1001,5,'2011-02-13 10:00:00',2),(1001,1,'2011-01-14 10:00:00',3),
--(1001,3,'2011-01-14 13:00:00',5),(1003,5,'2011-02-16 10:00:00',8),
--(1003,5,'2011-02-17 10:00:00',8),(1003,5,'2011-02-19 10:00:00',7);

--drop table t_atten_det;
--select * from t_atten_det;

--CREATE TABLE t_salary(
--Salary_id int primary key identity(1001,1),
--Emp_id int foreign key references t_emp(Emp_id),
--Changed_date datetime,
--New_salary decimal(10,2)
--);
--insert into t_salary values(1003,'2011-02-16',20000.00),(1003,'2011-01-05',25000.00),
--(1001,'2011-02-16',26000.00);

--drop table t_salary;

--select * from t_salary;

--select * from t_emp;

--Question 1

select concat(Emp_f_name,' ',Emp_m_name,' ',Emp_l_name) as Name,Emp_DOB
as Date_of_Birth from t_emp where month(dateadd(day,1,Emp_DOB))!=month(Emp_DOB);


--create view myview1 as select Emp_id,New_salary,row_number() over (partition
--by Emp_id order by Changed_date desc) as rank from t_salary;

--create view myview2 as select Emp_id,sum(Atten_end_hrs) as Total_worked from 
--t_atten_det group by Emp_id;

--create view myview3 as select a.Emp_id,a.Activity_id,b.Activity_description,
--a.Atten_end_hrs, row_number() over (partition by a.Emp_id order by a.Atten_start_datetime desc)
--as rank from t_atten_det a join t_activity b on a.Activity_id=b.Activity_id;

--Question 2

with mycte as (select Emp_id,New_salary from myview1 where rank=2)

select a.Emp_id,b.New_salary as Previous_sal,c.New_salary as Current_sal,
d.Total_worked as Total_Worked_hrs,e.Activity_id,e.Activity_description as
Last_worked_activity,e.Atten_end_hrs as Hrs_worked from 
t_emp a join mycte b on b.Emp_id=a.Emp_id join myview1 c on c.Emp_id=b.Emp_id join 
myview2 d on d.Emp_id=c.Emp_id join myview3 e on e.Emp_id=d.Emp_id where
c.rank=1 and abs(b.New_salary-c.New_salary)!=0 and e.rank=2;

