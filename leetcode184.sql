DROP TABLE IF EXISTS Employee;
DROP TABLE IF EXISTS Department;

CREATE TABLE Department (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE Employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT,
    departmentId INT
);

INSERT INTO Department VALUES
(1,'IT'),
(2,'Sales');

INSERT INTO Employee VALUES
(1,'Joe',70000,1),
(2,'Jim',90000,1),
(3,'Henry',80000,2),
(4,'Sam',60000,2),
(5,'Max',90000,1);
select * from Employee;
with rnk as(
select d.name as department , e.name as employee , salary ,
dense_rank() over(partition by d.name order by e.salary desc) as rnk 
from employee e
join department d
on d.id =e.departmentId
)
select department,employee,salary  from rnk
where rnk <=1