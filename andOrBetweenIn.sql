/****** Script for SelectTopNRows command from SSMS  ******/
use northwind
go
SELECT *  from orders

select * from orders
where (orderid=10248 and customerid ='VINET') 
or
(orderid=10259 and CustomerID='CHOPS')
--or
select EmployeeID from orders
where orderid=10248 or orderid=10254
--or
select EmployeeID from orders
where orderid=10248 or orderid=10259

select orderid,orderdate from orders
where orderdate = '1996-07-04 00:00:00.000'


select orderid,orderdate from orders
where orderdate != '1996-07-04 00:00:00.000'


select orderid,orderdate from orders
where orderdate between '1996-07-04 00:00:00.000' and 
'1996-07-08 00:00:00.000'

select orderid,orderdate from orders
where orderdate in('1996-07-04 00:00:00.000',
'1996-07-08 00:00:00.000')

select * from products
where CategoryID between 1 and 5
order by categoryid desc,productid,supplierid

select productid,productname,categoryid,
supplierid from products
where CategoryID between 1 and 5
order by 3 desc,1,4





