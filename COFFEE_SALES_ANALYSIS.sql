create DATABASE COFFEE_SALES_ANALYSIS;
use COFFEE_SALES_ANALYSIS;
select * from coffee_shop_sales;

-- -------------------------------------------------------------------------
-- 1. we know how much profile after sale of each product_category

select product_category, sum(unit_price) as total_profit,  sum(transaction_qty) as total_sale
          from coffee_shop_sales 
          group by product_category
          order by total_sale;
 -- --------------------------------------------------------------------------------
 
 -- -------------------------------------------------------------------------------------
-- 2. now we know, in which month we sale more product_category with profit

select transaction_date, sum(transaction_qty) as sale, sum(unit_price) as profit
	from coffee_shop_sales
    group by transaction_date
    order by transaction_date;
  -- ------------------------------------------------------------------------------------
  
SELECT 
    transaction_date, 
    SUM(transaction_qty * unit_price) AS total_sales
FROM 
    coffee_shop_sales
GROUP BY 
    transaction_date;

-- ------------------------------------------------------------------------
 
SELECT
	transaction_date, product_category, sum(transaction_qty), sum(transaction_qty*unit_price) as total_profit
FROM 
	coffee_shop_sales
GROUP BY
	transaction_date, product_category;

-- ----------------------------------------------------------------------

SELECT
	product_category, product_type, sum(transaction_qty)
FROM
	coffee_shop_sales
GROUP by
	product_category, product_type;
-- ----------------------------------------------------

-- 3. Top 5 Best-Selling Products:
SELECT product_id, SUM(transaction_qty) AS total_quantity
FROM coffee_shop_sales
GROUP BY product_id
ORDER BY total_quantity DESC
LIMIT 5;
-- ------------------------------------------------------------

-- 4. par day Sales Trends:
SELECT 
    ( transaction_date) AS par_day, 
    SUM(transaction_qty * unit_price) AS total_sales
FROM coffee_shop_sales
GROUP BY par_day;
-- -------------------------------------------------------

-- 5. Revenue by Store Location
SELECT 
    store_location, 
    SUM(transaction_qty * unit_price) AS total_sales
FROM coffee_shop_sales
GROUP BY store_location
ORDER BY total_sales DESC;
-- ---------------------------------------------------------

-- 6. Inventory Turnover:- "To measure products that might be sitting in stock for too long"

SELECT 
    product_id, 
    product_category, 
    AVG(transaction_qty) AS avg_sold_per_transaction
FROM 
    coffee_shop_sales
GROUP BY 
    product_id, product_category
ORDER BY 
    avg_sold_per_transaction ASC
LIMIT 10;
-- ------------------------------------------------------------------------

-- 7. Low-performing Products:- 
SELECT 
    product_id, 
    product_category, 
    SUM(transaction_qty) AS total_quantity
FROM 
    coffee_shop_sales
GROUP BY 
    product_id, product_category
ORDER BY 
    total_quantity ASC
LIMIT 10;
-- ------------------------------------------------------------------------












