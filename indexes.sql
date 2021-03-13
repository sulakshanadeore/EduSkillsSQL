--Indexes---- 
---Makes the query execution faster
--1) clustered: only one clustered index per table
--and when a primary key is created on the table -
--clustered index 
--is created autotmatically.so no more clustered
-- index can be crated on that table.


--2) non-clustered--- u may any number of non clustered  index on a single table
--but more the number of indexes the execution time will be more, as the database 
--compiler searches for the shortest possible path to search for the data.

----On what columns indexes must be created?
---Frequently used in the where clause of the query.

use northwind
go


sp_help products

select * into pdummy from products

select * from pdummy
where productid=1

select * from Products
where productid=7

select * from Products
where SupplierID=7

select customerid from orders
where CustomerID='ANTON'

select customerid from customers
where CustomerID='ANTON'


use educationinstitute
go
create nonclustered index I_bookname
 on books(bookname)
 sp_help books





