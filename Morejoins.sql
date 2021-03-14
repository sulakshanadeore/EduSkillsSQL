use northwind
go
select * from employees
---selfjoin--- 2 copies
select emp.employeeid,emp.lastname,emp.firstname,
emp.title as designation,emp.reportsto as MgrId,
mgr.FirstName,mgr.LastName
from Employees emp, Employees mgr
where emp.reportsto=mgr.employeeID

select * from customers

select c.customerid,c.companyname,c.City City,
 b.city,b.customerid,b.companyname
 from customers c, customers b 
 where c.CustomerID<>b.customerid
 and c.city=b.city


 select * from customers where city like 'México D.F.'

 select * from products
 order by categoryid
 select * from categories
 sp_help categories
 insert into Categories(CategoryName,Description)
  values('IndianFood','Roti,Rice,Vegetables,Dal')

  --LEFT OUTER JOIN---- returns all the data of the left table 
  --and the matching records
  --from the right table.
  --The result will be 0 from the right side, if there is no match

  --forceful selection
select productid,c.categoryid,unitprice
 from  
Categories c left outer join Products p
on p.CategoryID=c.CategoryID
order by p.CategoryID

select productid,c.categoryid,unitprice
 from  
 Products p left outer join Categories c
on p.CategoryID=c.CategoryID
order by p.CategoryID

--RIGHT OUTER JOIN---- returns all the data of the right table 
  --and the matching records
  --from the left table.
  --The result will be 0 from the left side, if there is no match


select productid,c.categoryid,unitprice
 from  
 Products p right outer join Categories c
on p.CategoryID=c.CategoryID
order by p.CategoryID

select productid,c.categoryid,unitprice
 from  
 Categories c right outer join Products p 
on p.CategoryID=c.CategoryID
order by p.CategoryID

---FULL OUTER JOIN-- returns all records when there is a
--match in left or right table records.
select productid,c.categoryid,unitprice
 from  
 Products p  full outer join  Categories c
on p.CategoryID=c.CategoryID
order by p.CategoryID


select * from categories --9
select * from products--77

--All combinations and permutations of one table row with the 
--other table row, use cross join.
-- It is also called as Cartesian join.

select 77*9


select * from categories,products

select c.categoryid categoryTable,
categoryname,p.categoryid ProductTable,productname 
from categories c,products p


select * from products

use oldhr
go
select * from emp
select * from dept
select * from emp,dept
select * from emp cross join dept
