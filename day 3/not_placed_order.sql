select c.customer_name from Customers c
left join Orders o on c.customer_id=o.customer_id
where o.order_id is null