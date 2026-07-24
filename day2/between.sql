select name ,salary from Employees
where salary between 50000 and 70000;
select name ,city from Employees
where city in ( 'Coimbatore' , 'Chennai');
select name ,city from Employees
where city not in( 'Chennai');
 
select name , bonus from Employees
where isnull(bonus) 