-- show all products --
select * from zepto_v1;

--  1.Show all products with their names and categories--
 
 select  name,category from zepto_v1;

-- 2.Find all products where outOfStock is True.--

select * from zepto_v1 where outofstock ='True'; 

-- 3.Retrieve the top 5 most expensive products based on mrp. --

select * from zepto_v1 order by mrp desc limit 5;

-- 4. List products that have more than 20% discount. --

select name ,category,discountpercent from zepto_v1
where discountpercent > 20;costomermarksstudentsstudentsmarksmark_id

-- 5.Find all products in the "Fruits & Vegetables" category.--

select * from zepto_v1 where category ='Fruits & Vegetables';

-- 6.Show the average discountPercent for each category.--

select Category,avg(discountpercent)  as avrage_discount
from zepto_v1
group by category;

-- 7.Find the product(s) with the maximum availableQuantity.--

select  category, max(availableQuantity) as maximum_quality
 from zepto_v1
group by category;

-- 8.Show the difference between mrp and discountedSellingPrice for each product.--

select category,mrp,discountedsellingprice ,
(mrp-discountedsellingprice) as price_differnce 
from zepto_v1;

-- 9.Count how many products are marked outOfStock = False.--

select count(*) from zepto_v1
where outofstock='false';

-- 10.Find all products that have the same mrp but different discountPercent.--

select  a.name,a.Category,a.mrp ,a.discountpercent as product ,
b.name,b.Category,b.mrp,b.discountpercent as product_b
from zepto_v1 a
join zepto_v1 b
on a.mrp = b.mrp and a.discountpercent<> b.discountpercent;

-- 11.Rank products in each category by their mrp (highest to lowest).--

select name,category,mrp,
rank() over (partition by category order by mrp desc) as mrp_rank
from zepto_v1;
 
 -- 12.Create a query to display products where quantity is greater than availableQuantity.--
 
 select * from zepto_v1
 where quantity > availablequantity;
 
 -- 13.Display products with the same name but belonging to different categories.--
 
 select a.name,a.category,
 b.name,b.category
 from zepto_v1 a
 join zepto_v1 b
 on a.name = b.name and a.category <> b.category;
 
 -- 14.Find the second most expensive product in each category.--
 

 select name,category,mrp 
 from (
  select name,category,mrp,
  rank() over(partition by category order by mrp desc) as mrp_range
  from zepto_v1
  ) zepto_v1
  where mrp_range =2;
  
  -- 15.Find duplicate product names across different categories and display their highest and lowest mrp side by side. --
  
  select name, count(distinct category)as category ,max(mrp) as high_mrp,min(mrp) as low_mrp
  from zepto_v1
  group by name
  having count(distinct category)>1

 
 

 





