abs
ceiling
floor
exp
%
pi
power
round
rand
sqrt


select round(45.677,2)
select sqrt(100)
select rand()
select ceiling(round(abs(-34.587),2))
select ceiling(45.345)
select floor(45.345)
select POWER(4,3)
select round(pi(),2)
select 19%2f
select EXP(45.3444)

---select trunc(45.32,2)
select cast(45.32 as int)--- to whatever datatype u want
select cast(45.32 as varchar)--- to whatever datatype u want
select convert(varchar(20),getdate(),107)
select cast(07-03-2021 as varchar)
select cast('07-03-2021' as datetime)
select cast(getdate() as varchar)
select coalesce(null,null,null,'hello')----return the first non-null value in the list

select distinct(city) from employees
select city from employees
select firstname,region from employees

select * from orders
select coalesce(city,region) from Employees

select firstname,city,region,coalesce(city,region) from employees

select firstname,city,region,coalesce(region,city) from employees

select * from [Order Details]

  select isnull(region,0) from customers;
  select * from Customers
  select coalesce(region,'No region') from Customers;

  --1) Counting Rows and Items
  --2) Aggregation Function
  --3)Extreme value identification
  --4) Slicing data
  --5) Limiting data
  --6)sorting data
  --7)filtering pattern
  --8) grouping
  --9)Rollup and Filtering in groups


  use OldHR
go
select comm from emp
select ename,sal,comm,coalesce(comm,0) from emp

select sal,comm,sal+coalesce(comm,0) totalsal from emp
select sal,comm,sal+isnull(comm,0) totalsal from emp

select ename,deptno,sal,
case 
when sal<=1600 then '2000'
when (sal>1600 and sal<3000) then '3500'
when sal=3000 then '4000'
end as newsalary
from emp
