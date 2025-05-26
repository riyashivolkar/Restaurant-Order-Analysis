-- combine menu_items and order tables in a single table

select * from menu_items;
select * from order_details;

select * from order_details od
left join menu_items mi on od.item_id = mi.menu_item_id;

-- what were the most and least ordered items? what categories are they in?

select item_name, category, count(order_details_id) as num
from order_details od
left join menu_items mi on od.item_id = mi.menu_item_id
 group by item_name, category
 order by num desc;
 
 -- What were the top 5 orders that spent the most money?

 select order_id, sum(price) as tot_spent from order_details od
left join menu_items mi on od.item_id = mi.menu_item_id
group by order_id
order by tot_spent desc
limit 5;


