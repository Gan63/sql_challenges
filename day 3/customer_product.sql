select c.customer_name,o.product from  Orders o
left join Customers c
on c.customer_id=o.customer_id