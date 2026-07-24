drop table if exists Employees;
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(20),
    salary INT,
    age INT,
    city VARCHAR(20),
    hire_date DATE,
    bonus INT
);
INSERT INTO Employees VALUES
(1,'Alice','HR',45000,24,'Chennai','2022-05-10',5000),
(2,'Bob','IT',65000,29,'Coimbatore','2021-02-15',NULL),
(3,'Charlie','IT',72000,32,'Bangalore','2020-11-20',8000),
(4,'David','Sales',55000,27,'Chennai','2023-01-08',3000),
(5,'Eva','HR',48000,26,'Madurai','2022-07-25',NULL),
(6,'Frank','IT',80000,35,'Hyderabad','2019-03-18',10000),
(7,'Grace','Sales',60000,30,'Coimbatore','2021-09-05',4000),
(8,'Helen','HR',52000,31,'Chennai','2020-12-01',NULL);
select * from Employees;