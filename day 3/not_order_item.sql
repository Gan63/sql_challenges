select  o.order_id,o.product from orders o
left join Customers c
on c.customer_id = o.customer_id
where c.customer_name is null

