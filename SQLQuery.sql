--Sub -Query-- 
---query inside the query
---the inside query is called as inner query.
--output of the inner query is the input to the outer query
---when the data is not available directly use sub query.
-----Joins & sub query work for combining the data from multiple 
--table and giving 
---a resultant set.
---the join is done either in the where and/or in the from clause.
---the result of the join is seen as resultant rows.
---When u write the subquery the result of the inner qeury is passed 
--to the outer
--query and the result may be a single(scalar) value or it can a set 
--of rows together.

----Joins are faster than subqueries

use northwind
go

select * from Customers


---find out the customers who stay in the same city 
---as AROUT stays.
select city from customers
where customerid='AROUT'

select * from customers 
where city=(select city from customers
where customerid='AROUT')

select * from customers 
where city like (select city from customers
where customerid='AROUT')


---find out city
select distinct(city) from  customers
where city like 'Seattle'
----find the employees who stay in the same city as 
--the customers stay

select EmployeeID,FirstName,city from employees
where city in (select distinct(city) from  customers)

select distinct(EmployeeID),FirstName,e.city 
from employees e left outer join  customers c
on c.City=e.city 

--employee count city wise
select city,count(city) from employees
group by city
order by count(city)

--the company provides travel if and only if 
--more 2 employees in the same city so print 
----city names along with employee details
select employeeid,FirstName,LastName from (select 
count(city) from employees
group by city
having count(city)>2 ) e

select firstname,city from employees where city in 
(select city from employees group by city 
having(count(city)>2) );

---exists
--print all the employee details if and only if 
---the city count is >=4 for any city
select EmployeeID,FirstName,city from employees 
where exists (select
count(city) from employees
group by city
having count(city)>=4)



--------------------------
use oldhr
go
select * from emp


select deptno,count(*) from emp
group by deptno

---list employees in deptno 20 if number of employees
--- working in deptno 20 is greater than or equal to 4
select * from emp
where deptno=20 
and exists
(select count(*) from emp
group by deptno
having count(*)>=4)
--------------------------
select * from emp
where deptno=20 
and exists
(select count(*) from emp
group by deptno)
select * from emp
where 
 exists
(select deptno,count(*) from emp
group by deptno
having count(*)>=2)

----------------------------------
select deptno,round(avg(sal),2) from emp
group by deptno

---display all employees who have salary > avg(Sal) 
--in their own depts

select empno,sal,deptno from emp e1
where sal > any(select round(avg(sal),2) from emp e2
where e1.sal>e2.sal
group by deptno)
order by deptno

-------------------------------
select * from emp

select deptno,round(avg(sal),2) from emp
group by deptno

select empno,sal,deptno from emp e1
where sal > all(select  round(avg(sal),2) from emp e2
where e1.deptno=e2.deptno
group by e2.deptno)
order by deptno



select empno,sal,deptno from emp e1
where sal > any(select  round(min(sal),2) from emp e2
where e1.deptno=e2.deptno
group by e2.deptno)


select empno,sal,deptno from emp e1
where sal > (select  round(min(sal),2) from emp e2
where e1.deptno=e2.deptno
group by e2.deptno)
order by deptno


select empno,sal,deptno from emp e1
where sal > (select  round(avg(sal),2) from emp e2
where e1.deptno=e2.deptno
group by e2.deptno)
order by deptno
