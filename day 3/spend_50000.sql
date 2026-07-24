select  c.customer_name,sum(o.amount) as spended from Customers c
left join Orders o
on c.customer_id = o.customer_id
group by customer_name
having sum(o.amount)>50000;