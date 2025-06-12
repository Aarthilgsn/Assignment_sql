--SQL SERVER CODE CHALLENGE
use Employee_database;

--create table employeee
create table employee(
EmpID INT PRIMARY KEY,
Name VARCHAR(50),
DepartmentID INT,
Salary DECIMAL(10,2),
Hiredate DATE,
);

--create table Department
create table Department(
DepartmentID INT PRIMARY KEY,
Departmentname VARCHAR(100),
);

--create performance table
create table Performance(
PerformanceId INT PRIMARY KEY,
EmployeeID INT,
Reviewdate DATE,
Score INT,
FOREIGN KEY (EmployeeID) REFERENCES employee(EmpID)
);


-- Employees
INSERT INTO Employee VALUES
(101, 'Aarthi', 2, 70000, '2023-07-15'),
(102, 'Ravi', 1, 50000, '2022-01-10'),
(103, 'Meena', 2, 80000, '2021-05-20'),
(104, 'Gokul', 3, 75000, '2024-03-05'),
(105, 'Swetha', 3, 68000, '2023-09-01');

update employee
set Hiredate='2024-08-10'
where EmpID=104;



-- Departments
INSERT INTO Department VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance');


-- Performance
INSERT INTO Performance VALUES
(1, 101, '2024-05-01', 95),
(2, 102, '2024-04-15', 78),
(3, 103, '2024-06-01', 88),
(4, 104, '2024-06-05', 92),
(5, 105, '2024-05-10', 84),
(6, 101, '2023-10-20', 80),
(7, 102, '2023-11-25', 85),
(8, 103, '2023-12-10', 90);

select * from employee;
select * from Department;
select * from Performance;

--TASK TO DONE
--1. Top performers : list out 3 emp who has done excellent score, show name, dept, score, reviedate
SELECT TOP 3 E.Name, D.DepartmentName, P.Score, P.ReviewDate
FROM Performance P
JOIN Employee E ON P.EmployeeID = E.EmpID
JOIN Department D ON E.DepartmentID = D.DepartmentID
ORDER BY P.Score DESC;

--2. Department-wise average score
SELECT D.DepartmentName, AVG(P.Score) AS AvgScore
FROM Performance P
JOIN Employee E ON P.EmployeeID = E.EmpID
JOIN Department D ON E.DepartmentID = D.DepartmentID
GROUP BY D.DepartmentName;

--3. Salary vs Performance Score
SELECT E.Name, E.Salary, P.Score
FROM Employee E
JOIN Performance P ON E.EmpID = P.EmployeeID
WHERE 
    E.Salary > (SELECT AVG(Salary) FROM Employee)
    AND P.Score > 80;


--4. New Joiners in the Last Year
SELECT Name, HireDate
FROM Employee
WHERE HireDate >= DATEADD(YEAR, -1, GETDATE());


