create database sales_book;
use sales_books;
create table sales
INSERT into sale (sales_id, sales_date, product, price, location) values
(1, '20/3/2026', 'mobile', '29999', 'banglore'),
(2, '23/3/2026', 'laptop', '69999', 'mumbai'),
(3, '24/4/2026', 'fridge' '1099990', 'raipur');


(

select count(*) as total_sales
from sales;

select region, count(*)
from sales
group by region;
