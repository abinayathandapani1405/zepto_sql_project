 zepto_sql_project

 Project Overview

This project analyzes retail product data from Zepto to uncover insights such as stock availability, discount patterns, category-level comparisons, and price variations.
Using MySQL, I wrote 15+ analytical queries that help in inventory management, pricing strategy, and business decision-making.

📂 Dataset Details

Table Name: zepto_v1

Source: Imported from CSV/SQL dump

Columns:
name — Product name

category — Product category

mrp — Maximum retail price

discountPercent — Discount applied

discountedSellingPrice — Final selling price after discount

availableQuantity — Current stock available

quantity — Ordered quantity

outOfStock — Availability status


🛠 SQL Workflow
1. Data Import

Dataset loaded into MySQL using LOAD DATA or Workbench import.

2. Data Cleaning

Ensured correct data types (mrp → numeric, outOfStock → boolean/text).

Verified for duplicate product names across categories.

Checked missing/invalid values.

3. Analysis Queries

Key insights extracted:

Show all products

select * from zepto_v1;


Find out-of-stock products

select * from zepto_v1 where outofstock = 'True';


Top 5 most expensive products

select * from zepto_v1 order by mrp desc limit 5;


Products with >20% discount

select name, category, discountpercent 
from zepto_v1 
where discountpercent > 20;


Category-wise average discount

select category, avg(discountpercent) as average_discount
from zepto_v1
group by category;


Rank products by MRP within each category

select name, category, mrp,
rank() over (partition by category order by mrp desc) as mrp_rank
from zepto_v1;


Second most expensive product in each category

select name, category, mrp 
from (
  select name, category, mrp,
  rank() over(partition by category order by mrp desc) as mrp_rank
  from zepto_v1
) temp
where mrp_rank = 2;


...and many more (total 15+) queries covering duplicates, price differences, and stock analysis.

