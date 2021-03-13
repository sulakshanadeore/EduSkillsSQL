--DML- Data Manipulation Language
----insert/update/delete

insert into department(dname) values('BioTechnology')
select * from department
update department
set locid=2
where deptno=40

update department
set locid=3
where deptno=50


select * from Subject
delete from teacher
where t_cd=1
select * from teacher


create table studmarks
(rollno int primary key,
marks int
)


alter table studmarks
add classcode int unique

alter table studmarks
drop column classcode 
sp_help studmarks

create table studresult
(rollno int foreign key references studmarks(rollno),
c_code int foreign key references studmarks(classcode))


insert into studmarks values(1,100,1)
insert into studmarks values(2,100,2)
delete from studmarks

create table stud_personal
(aadharid varchar(20),
passingyear datetime,
primary key(aadharid,passingyear))



