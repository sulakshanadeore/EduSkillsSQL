use oldhr
go

create table products
(id int identity(1,1) primary key,
product_name varchar(30),
price money);

create table stores
(id int identity(101,1) primary key,
store_name varchar(40));

create table sales
(productid int,
storeid int,
quantity int,
sales_date date,
primary key(productid,storeid),
foreign key (productid) references products(id),
foreign key (storeid) references stores(id))

select store_name,product_name,sum(quantity*price) as salesrevenue
from sales s inner join products p on
 p.id=s.productid inner join stores  on stores.id=s.storeid
 group by store_name,product_name


 select s.storeid,store_name,s.productid,product_name,sum(quantity*price) as salesrevenue
from sales s,stores,products p
where p.id=s.productid and stores.id=s.storeid
 group by s.storeid,store_name,s.productid,product_name
 order by s.storeid


 select store_name,product_name from stores cross join products

 select b.store_name,a.product_name
 from products a cross join stores b 

 select stores.id as store_id,products.id as product_id,
 store_name,product_name,round(sum(quantity*price),0) as revenue 
 from sales inner join products 
 on products.id=sales.productid inner join stores 
 on stores.id=sales.storeid 
 group by stores.id,products.id,store_name,product_name


 
 select stores.id as store_id,products.id as product_id,
 store_name,product_name,round(sum(quantity*price),0) as revenue 
 from sales inner join products 
 on products.id=sales.productid inner join stores 
 on stores.id=sales.storeid 
 group by stores.id,products.id,store_name,product_name

 
 ---------------------------------------------------------------
 --the stores that didn't sell particular product
 select b.store_name,a.product_name,isnull(revenue,0) as revenue
 from products a cross join stores b
 left outer join  
 (select stores.id as store_id,products.id as product_id,
 store_name,product_name,round(sum(quantity*price),0) as revenue 
 from sales inner join products 
 on products.id=sales.productid inner join stores 
 on stores.id=sales.storeid 
 group by stores.id,products.id,store_name,product_name) 
 as c 
 on c.store_id=b.id
 and c.product_id=a.id order by b.store_name
 ---------------------------------------------------

 