-- Payment Status Analysis Task3

-- 1. Payment Status Count

SELECT 
    payment_status, 
    COUNT(*) AS total_payments
FROM 
    payments
GROUP BY 
    payment_status
ORDER BY 
    total_payments DESC;


-- 2.Payment Method Preference

SELECT 
    payment_method, 
    COUNT(*) AS total_used
FROM 
    payments
WHERE 
    payment_status = 'completed'
GROUP BY 
    payment_method
ORDER BY 
    total_used DESC;
    
    
-- 3. Total Payment Amount for Completed Payments

SELECT 
    round(SUM(payment_amount),2) AS total_successful_payments
FROM 
    payments
WHERE 
    payment_status = 'completed';




