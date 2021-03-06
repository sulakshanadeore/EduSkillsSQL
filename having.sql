use northwind
go
select * from products

----show count of products category wise
----count of products categorywise
select categoryid,count(productid) as Productcount from Products
group by CategoryID


select productid,UnitPrice,Quantity,
(UnitPrice*Quantity) as amt from [Order Details]
where orderid=10248


select productid,UnitPrice,Quantity,
sum(UnitPrice*Quantity) as amt from [Order Details]
where orderid=10248
group by ProductID,UnitPrice,Quantity

select 167.40+1696
select productid,UnitPrice,Quantity,
sum(UnitPrice*Quantity) as amt from [Order Details]
where orderid=10260
group by ProductID,UnitPrice,Quantity




--orderid wise sum of (unitprice And quantity)
select orderid,sum(unitprice*quantity) from [Order Details]
where orderid=10260
group by orderid

select 123.20+780+591+252

select productid,UnitPrice,Quantity,
sum(UnitPrice*Quantity) as amt from [Order Details]
where orderid=10260
group by ProductID,UnitPrice,Quantity


select productid,UnitPrice,Quantity,
sum(UnitPrice*Quantity) as amt from [Order Details]
where orderid=porderid
group by ProductID,UnitPrice,Quantity



select orderid,sum(unitprice*quantity) as amt from [Order Details]
group by orderid


select orderid,sum(unitprice*quantity) as amt from [Order Details]
where orderid between 10403 and 10902
group by orderid
having sum(unitprice*quantity)>1000 and sum(unitprice*quantity)<2000
order by amt




select colname/names(*) from tname
where condition
groupby colname/s
having condition
order by colname/s
 
select top 5 productid,productname,supplierid,categoryid,unitprice
 from products
order by unitprice desc






