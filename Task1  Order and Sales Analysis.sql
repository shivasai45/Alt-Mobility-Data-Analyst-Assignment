-- Task : Order And Sales Analysis

-- 1. Order Status Count
 
 SELECT 
    order_status, 
    COUNT(*) AS total_orders
FROM 
    customer_orders
GROUP BY 
    order_status
ORDER BY 
    total_orders DESC;


-- 2. Total Sales and Average values

SELECT 
    round(SUM(order_amount),2) AS total_sales_amount,
    round(AVG(order_amount),2) AS average_order_value
FROM 
    customer_orders;


-- 3. Monthly Sales Trends

SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month_year,
    round(SUM(order_amount),2) AS monthly_sales
FROM 
    customer_orders
GROUP BY 
    month_year
ORDER BY 
    month_year;
 
 
-- 4.Top % highest Order Amount

SELECT 
    order_id, 
    customer_id, 
    order_amount
FROM 
    customer_orders
ORDER BY 
    order_amount DESC
LIMIT 5;



