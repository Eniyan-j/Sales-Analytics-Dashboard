CREATE DATABASE sales_analytics;
use  sales_analytics;
use sales_analytics;

show tables;
select * from sample_superstore
limit 10;

#describe
describe sample_superstore;

#total_rows
select count(*) as total_rows 
from sample_superstore;

#KPIs
#total_sales
select round(sum(sales),2) as total_sales
from sample_superstore;
#total_profit
select round(sum(profit),2) as total_profit
from sample_superstore;
#total_orders
select count(distinct`Order ID`)as Total_orders
from sample_superstore;
#total_customers
SELECT COUNT(DISTINCT `Customer ID`) AS Total_Customers
FROM sample_superstore;

#business Questions
#salesbyregion
SELECT Region,ROUND(SUM(Sales),2) AS Total_Sales
FROM sample_superstore
GROUP BY Region
ORDER BY Total_Sales ;

#salesbyategory
SELECT category,round(sum(sales),2) as total_sales
from sample_superstore
group by category
order by total_sales;

#salesbysegment
SELECT segment,round(sum(sales),2) as total_sales
from sample_superstore
group by segment
order by total_sales;

#profitbyregion
SELECT Region,ROUND(SUM(profit),2) AS Total_profit
FROM sample_superstore
GROUP BY Region
ORDER BY Total_profit desc;

#profitbycategory
SELECT category,ROUND(SUM(profit),2) AS Total_profit
FROM sample_superstore
GROUP BY category
ORDER BY Total_profit desc;

