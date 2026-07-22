-- Create Table

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(20),
    salary INT,
    age INT
);

-- Insert Data
INSERT INTO Employees (emp_id, name, department, salary, age) VALUES
(1, 'Alice', 'HR', 45000, 24),
(2, 'Bob', 'IT', 65000, 29),
(3, 'Charlie', 'IT', 72000, 32),
(4, 'David', 'Sales', 55000, 27),
(5, 'Eva', 'HR', 48000, 26),
(6, 'Frank', 'IT', 80000, 35),
(7, 'Grace', 'Sales', 60000, 30),
(8, 'Helen', 'HR', 52000, 31);

