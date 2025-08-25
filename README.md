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

🔎 Analysis Questions

1.Show all products with their details.

2.Display product names and their categories.

3.Find all products where outOfStock = True.

4.Retrieve the top 5 most expensive products based on MRP.

5.List products that have more than 20% discount.

6.Find all products in the “Fruits & Vegetables” category.

7.Show the average discount percent for each category.

8.Find the product(s) with the maximum available quantity in each category.

9.Show the difference between MRP and discounted selling price for each product.

10.Count how many products are marked outOfStock = False.

11.Find products that have the same MRP but different discount percentages.

12.Rank products in each category by MRP (highest to lowest).

13.Display products where ordered quantity > availableQuantity.

14.Find products with the same name but belonging to different categories.

15.Find the second most expensive product in each category.






