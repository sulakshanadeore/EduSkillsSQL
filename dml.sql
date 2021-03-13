use EducationInstitute
go
insert into teacher values(1,'Reena')

sp_help subject

insert into subject values(1,'Maths',1);
insert into subject values(2,'Economics',2);
insert into subject values(3,'Physics',1);



select * from Subject
select * from teacher
where t_cd=1

insert into Subject(subid,subname) values (4,'Chemistry')

insert into Subject(subname) values ('Biology')

select * from Teacher
select * from subject

---copy of the table---constraints are defined
create table teacherdummy
(t_code int primary key, tname varchar(20))

insert into teacherdummy select * from Teacher
select * from teacherdummy
insert into teacherdummy values(4,'a'),(5,'b')

drop table teacherdummy

//clone----shallow copy
select * into t1 from teacher
select * from t1
sp_help t1

---create table without constraints and keys
create table t_dummy
as 
select * from teacher