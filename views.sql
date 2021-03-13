--views---virtual tables
--data from underlying table/tables
----security to the data-- 
----physical storage- --table
----- a view contain multiple columns in whatever order u want
--& it can contain as less as 1 column also
-----as u do i/u/d u on tables may also do it on view
----view may not contain the same column as the table, it can be 
---different column names, it can also have computed columns


----Types of Views
----a) Simple----simple select queries without function,group, order or having
---- b)Complex--atleast one of the above,join, subquery
---Simple views are updateable
-----complex views are non-updateable

use educationinstitute
go
create view v_deptdetails
as 
select top 100 deptno,dname from department
order by deptno

insert into v_deptdetails(dname) values ('comp')

use OldHR
select * from emp

create view v_empsal
as
select deptno,sum(sal) totalsal from emp
group by deptno


select * from v_empsal
where totalsal>4000

select deptno,avg(totalsal) as avgsal from v_empsal
group by deptno
having avg(totalsal)>4000

select deptno,sum(sal) totalsal from emp
group by deptno
having sum(sal)>4000





insert into v_empsal values (10,3000)




go






insert into v_deptdetails
(dname) values ('Electronics')


select * from department

update v_Deptdetails
set dname='Electrical'
where deptno=60


select * from v_deptdetails
drop view v_deptdetails


create view v1
as 
select bookid,bookname,pages,subject_id,subname 
from books,subject
where Books.Subject_id=Subject.subid

select * from v1
insert into v1 values(104,'r',500,1,'comp')