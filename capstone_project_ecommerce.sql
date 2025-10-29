CREATE DATABASE ecommercedb;
USE ecommercedb;

-- view all tables
SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM order_items;
SELECT * FROM products;
SELECT * FROM returns;

-- preview first 5
SELECT * FROM customers LIMIT 5;
SELECT * FROM orders LIMIT 5;
SELECT * FROM order_items LIMIT 5;
SELECT * FROM products LIMIT 5;
SELECT * FROM returns LIMIT 5;

-- DATA COUNTS
SELECT 'customers' AS table_name,COUNT(*) AS myrows FROM customers
UNION ALL
SELECT 'orders' ,COUNT(*) FROM orders
UNION ALL
SELECT 'order_items' ,COUNT(*) FROM order_items
UNION ALL
SELECT 'products' ,COUNT(*) FROM products
UNION ALL
SELECT 'returns' ,COUNT(*) FROM returns;

-- count nulls in customers
SELECT 
 SUM(customer_id IS NULL) AS nulls_customer_id,
 SUM(name IS NULL) AS nulls_name,
 SUM(email IS NULL) AS nulls_email,
 SUM(signup_date IS NULL) AS nulls_signup_date,
 SUM(region IS NULL)AS nulls_region
FROM customers;

-- count nulls in orders
SELECT 
 SUM(order_id IS NULL) AS nulls_order_id,
 SUM(customer_id IS NULL) AS nulls_customer_id,
 SUM(order_date IS NULL) AS nulls_order_date,
 SUM(total_amount IS NULL)AS nulls_total_amount
FROM orders;

-- count nulls in order_items
SELECT 
 SUM(order_item_id IS NULL) AS nulls_order_item_id,
 SUM(order_id IS NULL) AS nulls_order_id,
 SUM(product_id IS NULL) AS nulls_product_id,
 SUM(quantity IS NULL)AS nulls_quantity,
 SUM(item_price IS NULL)AS nulls_item_price
FROM order_items;

-- count nulls in products
SELECT 
  SUM(product_id IS NULL) AS nulls_product_id,
  SUM(name IS NULL) AS nulls_name,
  SUM(category IS NULL) AS nulls_category,
  SUM(price IS NULL)AS nulls_price
 FROM products;
 
-- Count nulls in returns
SELECT 
  SUM(return_id IS NULL) AS nulls_return_id,
  SUM(order_id IS NULL) AS nulls_order_id,
  SUM(return_date IS NULL) AS nulls_return_date,
  SUM(reason IS NULL)AS nulls_reason
 FROM returns;
 
-- percent NULLs by column in customers
SELECT 
  100*SUM(name IS NULL)/COUNT(*) AS pct_null_name,
  100*SUM(email IS NULL)/COUNT(*) AS pct_null_email,
  100*SUM(signup_date IS NULL)/COUNT(*) AS pct_null_signup_date,
  100*SUM(region IS NULL)/COUNT(*) AS pct_null_region
FROM customers;

-- Basic statistics for orders amount
SELECT 
   MIN(total_amount)AS min_amt,
   MAX(total_amount)AS max_amt,
   AVG(total_amount)AS avg_amt,
   SUM(total_amount)AS sum_amt
FROM orders;
   



 
 





  
