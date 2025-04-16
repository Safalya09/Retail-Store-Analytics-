create database Retail_Store;
use Retail_Store;


select extract( year from str_to_date(`Date`,  '%d/%m/%Y')) as `Year`, round(sum(Sales_Amount)) as `Net Sales`
from `retail store data`
group by `Year`;





select * from `retail store data`;

select extract(month from str_to_date(`Date`,'%d/%m/%Y')) as `Month`, round(sum(Sales_Amount)) as Monthly_Sales
from `retail store data`
group by `Month`
order by Monthly_Sales desc;






-- Top 10 Customers
select Customer_ID,round(sum(Sales_Amount))as `User Expenditure`
from `retail store data`
group by Customer_ID
order by `User Expenditure` desc
limit 10;


select * from `retail store data`;
select SKU_Category,round(sum(Sales_Amount)) as `Product Sold Amount`
from `retail store data`
group by SKU_Category
order by `Product Sold Amount` desc
limit 10;

select * from `retail store data`;

-- TOP 10 Most Selling Product (Quantity)
select SKU,sum(Quantity) as `Total Number of Quantity Sold`
from `retail store data`
group by SKU
order by `Total Number of Quantity Sold` desc
limit 10;








