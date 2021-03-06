use OldHR
go

select * from emp

select count(comm) from emp
select avg(comm) from emp
select min(comm) from emp
select max(comm) from emp


select deptno,avg(comm) from emp
group by deptno


select deptno,sum(sal) from emp
group by deptno


select deptno,min(sal) from emp
group by deptno
order by deptno,min(sal) 

select * from emp






