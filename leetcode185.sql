-- Remove old tables if they exist
DROP TABLE IF EXISTS Employee;
DROP TABLE IF EXISTS Department;

-- Create Department table
CREATE TABLE Department (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Create Employee table
CREATE TABLE Employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT,
    departmentId INT
);

-- Insert Department data
INSERT INTO Department (id, name) VALUES
(1, 'IT'),
(2, 'Sales');

-- Insert Employee data
INSERT INTO Employee (id, name, salary, departmentId) VALUES
(1, 'Joe', 85000, 1),
(2, 'Henry', 80000, 2),
(3, 'Sam', 60000, 2),
(4, 'Max', 90000, 1),
(5, 'Janet', 69000, 1),
(6, 'Randy', 85000, 1),
(7, 'Will', 70000, 1);

-- Verify data
SELECT * FROM Department;

SELECT * FROM Employee;
with rnk as
(select  d.name as department, e.name as  employee ,e.salary ,
dense_rank() over (partition by d.name order by e.salary desc) as rnk
from  department d
join employee e
on d.id=e.departmentId

)
select department,
    employee,
    salary
    from 	
where rnk <= 3;

