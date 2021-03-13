use northwind
go
--Joins---u need to fetch data from multiple tables/sources
--then we use joins
---data is in single table but not clear in such situations also we use joins
--To make a join there should be common column in between the tables u want to
--join
--The tables are  called joining tables and the condition 
--is joining condition
----The resultant table is a join on the tables made

--Types of joins
---Inner Joins/Equi Joins-----use = operator,natural join
----NonEqui Joins---operator other than =
----Outer Joins--- Left/Right/Full Outer---keyword
----Self Joins----alias
----Cartesian Join----no valid joining condition exists

---display the category name along with the product details
select productid,productname,unitprice,
p.categoryid,categoryname from Products as p,Categories as c
where p.categoryid=c.categoryid

select productid,productname,unitprice,
p.categoryid,categoryname from Products as p 
inner join Categories as c on p.CategoryID=c.CategoryID


select productid,productname,unitprice,
p.categoryid,categoryname from Products as p 
natural join Categories as c


---show order details along with employeename
select o.*,e.FirstName from orders o,employees  e
where o.EmployeeID=e.EmployeeID

SELECT OrderID
      ,CustomerID
      ,Orders.EmployeeID,
	  e.firstname
      ,OrderDate
      ,RequiredDate
      ,ShippedDate
      ,[ShipVia]
      ,[Freight]
      ,[ShipName]
      ,[ShipAddress]
      ,[ShipCity]
      ,[ShipRegion]
      ,[ShipPostalCode]
      ,[ShipCountry]
  FROM [dbo].[Orders],Employees e
  where Orders.EmployeeID=e.EmployeeID
 
 select productid,productname,p.supplierid,Companyname,p.categoryid,
 categoryname,unitprice from products p,Categories c,suppliers s
 where p.categoryid=c.CategoryID and p.SupplierID=s.SupplierID







