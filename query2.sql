-- view order details table

select * from order_details;

-- what is the date range of the table?
select max(order_date), min(order_date) from order_details;

-- How many orders were made within this date range?
select count( distinct order_id) from order_details;

-- which order has most number of items

select order_id, count(item_id) as a from order_details
group by order_id 
order by a  desc;

-- How many orders had more than 12 items?
select count(*) from
(select order_id , count(item_id) as a from order_details
group by order_id
having a > 12) as num
