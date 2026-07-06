SELECT product_name from data
order by profit DESC
limit 10;

select region, sum(sales) as total_sales
from data
group by region;

select category, avg(profit) as Avg_profit
from data
group by category;

select category, max(discount) as highest_discount
from data
group by category
order by highest_discount DESC
limit 1;

select order_id, profit as neg_profit
from data
where profit<0;

SELECT
CASE substr(order_date, 4, 2)
    WHEN '01' THEN 'Jan'
    WHEN '02' THEN 'Feb'
    WHEN '03' THEN 'Mar'
    WHEN '04' THEN 'Apr'
    WHEN '05' THEN 'May'
    WHEN '06' THEN 'Jun'
    WHEN '07' THEN 'Jul'
    WHEN '08' THEN 'Aug'
    WHEN '09' THEN 'Sep'
    WHEN '10' THEN 'Oct'
    WHEN '11' THEN 'Nov'
    WHEN '12' THEN 'Dec'
END AS Month,
SUM(Sales) AS Total_Sales
FROM data
GROUP BY Month;


SELECT market, sum(profit) as total_profit
FROM data
group by market;

SELECT sub_category, sum(profit) as total_profit
FROM data
GROUP by sub_category
order by total_profit DESC
limit 5;

SELECT ship_mode, COUNT(order_id) as total_orders
FROM data
GROUP by ship_mode
order by total_orders DESC;

SELECT ship_mode, COUNT(order_id) as total_orders
from data
group by ship_mode
order by total_orders desc;
