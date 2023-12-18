select * 
from blackfridayproject.acc_order_clean;

-- Will use SQL to answer some of my questions

-- 1. Comparing sales for each year

select store, round(sum(total_price), 2) as revenue, date_format(date, '%Y') as order_year
from blackfridayproject.acc_order_clean
group by store, date_format(date, '%Y');


-- 2. average spending per order per year

select store, round(avg(total_price), 2) as avg_order_rev, date_format(date, '%Y') as order_year
from blackfridayproject.acc_order_clean
group by store, date_format(date, '%Y');

-- 3. How many orders each year?

select store, count('order_nr.') as orders,  date_format(date, '%Y') as order_year
from blackfridayproject.acc_order_clean
group by store, date_format(date, '%Y');

-- 4. amount of orders per year vs revenue

select store, count('order_nr.') as orders,  date_format(date, '%Y') as order_year, round(avg(total_price), 2) as avg_order_rev
from blackfridayproject.acc_order_clean
group by store, date_format(date, '%Y');

-- 5. average weekly spending per year (Do people buy more during BF week?)

-- 6. Yearly promo adoption