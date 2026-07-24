select c.customer_name ,o.product,o.amount from Orders o
inner join  Customers c
on c.customer_id = o.customer_id