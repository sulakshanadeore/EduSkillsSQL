select concat(firstname,' ' ,lastname) as fullname from employees
select concat(titleofcourtesy,firstname,' ,  birthday is on ', 
datepart(day,birthdate),' ',datename(month ,birthdate)) as birthday from employees


select replace('hello','l','y')

select firstname,replace(firstname,'a','e') from employees
select char(65) 
select char(44) 

---ascii represents numerical equivalents for all chars in the character set
select ascii('A')
select ascii(9)

select firstname, CHARINDEX('N',firstname,1) from employees
select firstname, CHARINDEX('N',firstname,2) from employees

select concat(titleofcourtesy,firstname),CHARINDEX('M',concat(titleofcourtesy,firstname),4) from Employees



select firstname,len(firstname),DATALENGTH(firstname) from employees
select firstname,upper(firstname),lower(firstname) from employees
select firstname,concat(firstname,' ',substring(lastname,1,1)) from employees

select substring('hello',2,2)


select substring(firstname,1,1), ascii(substring(firstname,1,1)) from employees
order by ascii(substring(firstname,1,1))

select firstname,reverse(firstname) from employees

select ascii(1)
select ascii(',')



 select charindex('l','hello')first_l, 
 CHARINDEX('l', 'hello', CHARINDEX('l', 'hello')+1) second_l

 select firstname, charindex('n',firstname,charindex('n',firstname) +1) from Employees
 --%,_
 select firstname from employees
 where firstname like '%e%'

 select firstname from employees
 where firstname like '____e%'

 select firstname from employees
 where firstname like '_____'

 select firstname from employees
 where FirstName like  'J___t'

 select patindex('%ni%','UnitedStates')
 select patindex('__%[a-z]%','aa223b')

 select char(ascii(patindex('%[0-9]%','aa234b')))

 select substring('aa2233b',patindex('%[0-9]','aa2233b'),len('aa2233b'))

 --left,right,ltrim,rtrim,trim,difference,replicate,stuff,
 select replicate('sql',5)

 select len('             sql'),ltrim('             sql'),
 len(ltrim('             sql'))
---ltrim-cut spaces from left hs
---rtrim-cut spaces from right hs


select len('             sql    '),rtrim(' sql      '),
 len(rtrim('             sql      '))

 select left('aa2233b',4)
select right('aa2233b',4)

 select right(substring('aa2233b',patindex('%[0-9]','aa2233b'),
 len('aa2233b')),4)

 select stuff('sql tutorial',1,3,'sql server')

 select stuff('hello from tutorial',12,8,'sql server')

--India1927
select DIFFERENCE('summarize','a')
--0-indicates weak  or no similarity
--1-indicate some similarity
--2- difference
--3-difference
--4--- strong similarity


select SOUNDEX('pary'),soundex('pary')
select str(6) 












 




