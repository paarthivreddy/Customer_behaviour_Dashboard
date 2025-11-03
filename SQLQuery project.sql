select Gender,sum(Purchase_Amount_USD)
from shopping
group by Gender


select Customer_ID,Purchase_Amount_USD
from shopping
where Discount_Applied='Yes' and Purchase_Amount_USD >=(select avg(Purchase_Amount_USD)
from shopping)


select max(Item_Purchased),Gender
from shopping
Group by Gender

select top 5 Item_Purchased,AVG(Review_Rating) as "avg product rating"
from shopping
group by Item_Purchased
order by AVG(Review_Rating) desc




select Customer_ID,Age,Gender
from shopping
where Age between 40 and 42



select *
from shopping

select Category,count(item_Purchased) as "morethan 1 purchased"
from shopping
group by Category
Having count(item_Purchased)>=1



-- enable if admin: creates a SQL login
CREATE LOGIN powerbi_user WITH PASSWORD = 'Bunny@2005';
USE [pizza db];  -- or your DB name
CREATE USER powerbi_user FOR LOGIN powerbi_user;
ALTER ROLE db_datareader ADD MEMBER powerbi_user;
-- optionally:
ALTER ROLE db_datawriter ADD MEMBER powerbi_user;