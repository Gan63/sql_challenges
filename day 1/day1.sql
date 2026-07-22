select name ,department ,from Employees
group by department
having count(employee);