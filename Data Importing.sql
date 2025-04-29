CREATE TABLE customer_orders (
    order_id VARCHAR(255) PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    order_amount FLOAT,
    shipping_address TEXT,
    order_status VARCHAR(100)
);
select count(*) from customer_orders;

CREATE TABLE payments (
    payment_id VARCHAR(255) PRIMARY KEY,
    order_id VARCHAR(255),
    payment_date DATE,
    payment_amount FLOAT,
    payment_method VARCHAR(100),
    payment_status VARCHAR(100),
    FOREIGN KEY (order_id) REFERENCES customer_orders(order_id)
);

select count(*) from Payments;
