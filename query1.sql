use restaurant_db;

-- view menu items table

select * from  menu_items;

-- Find the no of items in this menu.

select count(category) as menu_items from menu_items;

-- What are the most and least expensive items in the menu ?

select max(price), min(price) from menu_items;

-- How many italian dishes are there in the menu?

select count(*) from menu_items 
where category ='Italian';

-- What are the most and least Italian dishes on the menu

select * from menu_items 
where category ='Italian'
order by price desc;

-- How many dishes are there in each categoty?

select count(item_name), category from menu_items
group by category;

 -- Avg dish price in each category
 
 select category, avg(price) as avg_price from menu_items
 group by category

 
 
 