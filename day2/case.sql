select name , salary ,
case
when  salary >= 70000 then 'High'
when salary >= 50000 and salary <= 70000 then 'Medium'
else 'low'
end as salary_type

from Employees

