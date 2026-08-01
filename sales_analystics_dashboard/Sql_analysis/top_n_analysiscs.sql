use sales_analytics;
#top N analysis

#top 10 customers by sales 
select `Customer Name`, round(sum(sales),2) as total_sales,round(sum(profit),2) as total_profit
from sample_superstore
group by `Customer Name`
order by total_sales desc ,total_profit desc
limit 10;

#top 10 products by sales and profit 
select `Product Name`, round(sum(sales),2) as total_sales,round(sum(profit),2) as total_profit
from sample_superstore
group by `Product Name`
order by total_sales desc ,total_profit desc
limit 10;