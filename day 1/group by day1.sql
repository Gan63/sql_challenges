select name ,department ,from Employees
group by department
having count(employee);




select department ,count(department) as count_emp from Employees
group by department;


