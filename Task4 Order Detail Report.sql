-- Task4 Order Detail Report

SELECT 
    co.order_id,
    co.customer_id,
    co.order_date,
    co.order_amount,
    co.order_status,
    p.payment_date,
    p.payment_amount,
    p.payment_method,
    p.payment_status
FROM 
    customer_orders AS co
LEFT JOIN 
    payments AS p
ON 
    co.order_id = p.order_id;
