-- Task2 Customer Analysis

-- 1. Total Orders Per Customer

SELECT 
    customer_id,
    COUNT(order_id) AS total_orders
FROM 
    customer_orders
GROUP BY 
    customer_id
ORDER BY 
    total_orders DESC;
    
    
-- 2 Repeat Customers(2+ orders)

SELECT 
    customer_id,
    COUNT(order_id) AS total_orders
FROM 
    customer_orders
GROUP BY 
    customer_id
HAVING 
    COUNT(order_id) > 1
ORDER BY 
    total_orders DESC;
    
    
-- 3.New Customers Monthly Trend

SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month_year,
    COUNT(DISTINCT customer_id) AS new_customers
FROM 
    customer_orders
GROUP BY 
    month_year
ORDER BY 
    month_year;




