select c.customer_name ,sum(o.amount)as total_amt  from Customers c
left join  Orders o 
on c.customer_id = o.customer_id
group by customer_name
order by sum(o.amount) desc
limit 1;