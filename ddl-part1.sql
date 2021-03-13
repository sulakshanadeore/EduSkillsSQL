--DDL-- Data Definition Language---
--Define the structure of the tables/objects
---CREATE table/view/synonym,index....
---ALTER table/view/synonym,index....
---DROP table/view/synonym,index....---structure along with data is deleted

---DELETE ---- only rows get deleted the structure remains intact

use educationinstitute
go

create table student
(rollno int primary key,
studname nvarchar(20),
city varchar(MAX),
state varchar(40)
)

drop table subject


1teacher-- M subject- inlcude 1 into many

create table Teacher
(T_cd int primary key,
T_name varchar(20))

create table Subject
(
subid int constraint pk_subid primary key,
subname varchar(20),
T_code int foreign key references Teacher(T_cd))



 







