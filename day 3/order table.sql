CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(50),
    amount INT,
    order_date DATE
);
INSERT INTO Orders VALUES
(101,1,'Laptop',65000,'2024-01-10'),
(102,1,'Mouse',800,'2024-02-15'),
(103,2,'Keyboard',2500,'2024-03-20'),
(104,3,'Monitor',12000,'2024-04-05'),
(105,3,'Headphones',3500,'2024-05-18'),
(106,6,'Printer',9000,'2024-06-22');


