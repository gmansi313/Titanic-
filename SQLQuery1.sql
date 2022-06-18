/*checking the columns*/
select COUNT(*) from [dbo].[Orders$FilterDatabase]
select * from [dbo].[Orders$FilterDatabase]
order by 1
Select
/*checking if Order ID can be a primary key or not*/
Select [Order ID], Count(*)
from [dbo].[Orders$FilterDatabase]
group by [Order ID]
having COUNT(*)>1

/*here we can see for one order id there are many diffrent items*/
Select * from [dbo].[Orders$FilterDatabase]
where [Order ID] = 'AO-2011-8430'

/* Now, Let's see the combination of row id and order id to Check if this combination has the duplicates*/
Select [Row ID], [Order ID], COUNT(*)
from [dbo].[Orders$FilterDatabase]
group by [Row ID], [Order ID]
having COUNT(*)>1
Select [Row ID], [Product ID], COUNT(*)
from [dbo].[Orders$FilterDatabase]
group by [Row ID], [Product ID]
having COUNT(*)>1
Select  Distinct([Row ID])
from [dbo].[Orders$FilterDatabase]
order by 1