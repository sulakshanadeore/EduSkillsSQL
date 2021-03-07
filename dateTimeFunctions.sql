select getdate()
select DATEPART(year,getdate())
select DATEPART(day,getdate())
select DATEPART(month,getdate())
select DATEPART(MINUTE,getdate())
select DATEPART(HOUR,getdate())
select DATEPART(HH,getdate())
select DATEADD(year,1,getdate())
select DATEADD(MONTH,1,getdate())
select DATEADD(day,1,getdate())
select birthdate,DATEadd(day,1,birthdate) from employees
select birthdate,
CONCAT(Datepart(day,birthdate),'/',DATEPART(month,birthdate)) as birthday, 
 firstname  from employees
 select birthdate,
CONCAT(Datepart(day,birthdate),' ',datename(month,birthdate)) as birthday, 
 firstname  from employees
 select datename(mm,birthdate),datename(m ,birthdate) from employees
 select datename(day,birthdate) from employees
 select datename(year,birthdate) from employees

 set language German
 select datename(mm,birthdate),datename(m ,birthdate) from employees

 set language english
 select datename(mm,birthdate),datename(m ,birthdate) from employees

 select convert(varchar(19),getdate())
 select convert(varchar(25),getdate())
 select convert(varchar(25),getdate(),10)
 select convert(varchar(25),getdate(),1)
 select convert(varchar(25),getdate(),110)
 select convert(varchar(25),getdate(),107)
 select convert(varchar(10),getdate(),107)
 select convert(varchar(2),datepart(month,birthdate),107) from employees

 select convert(varchar(25),getdate(),108)



 








 select birthdate,hiredate,DATEDIFF(year,birthdate,hiredate) as age from employees

select birthdate,DATENAME(month,birthdate) from Employees
 



