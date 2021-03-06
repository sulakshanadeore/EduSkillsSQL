--aggregate functions-- single value

select * from Products

select max(unitprice) from Products
select min(unitprice) from Products
select avg(unitprice) from Products

select count(*) from Products


select * from employees
select count(*) from employees---- pk--- whole number of rows
select count(region) from employees---doesnot have null value
select * from shippers