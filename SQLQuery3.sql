--PRATICE SQL QURIES(The database Employee Management System contains Employee_N table and student table)

use [Employee Management System];

CREATE TABLE Employees_N(
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary INT,
    JoinDate DATE,
    Email VARCHAR(100)
);

select * from Employees_N;

INSERT INTO Employees_N VALUES 
(1, 'Aarthi', 'IT', 55000, '2021-02-15', 'aarthi@example.com'),
(2, 'Rahul', 'HR', 48000, '2020-08-10', 'rahul@example.com'),
(3, 'Sneha', 'Finance', 60000, '2022-01-01', 'sneha@example.com'),
(4, 'Arun', 'IT', 51000, '2021-06-20', NULL),
(5, 'Deepa', 'HR', 53000, NULL, 'deepa@example.com'),
(6, 'Vikram', 'Marketing', 47000, '2020-11-11', NULL),
(7, 'Anjali', 'IT', 57000, '2023-03-05', 'anjali@example.com'),
(8, 'Suresh', 'Admin', 44000, NULL, NULL),
(9, 'Priya', 'Finance', 62000, '2022-09-14', 'priya@example.com'),
(10, 'Gopi', 'HR', 58000, '2023-07-20', 'gopi@example.com'),
(11, 'Harsha', 'IT', 49000, NULL, NULL),
(12, 'Karthik', 'Finance', 53000, '2020-01-25', 'karthik@example.com'),
(13, 'Divya', 'Admin', 50000, '2021-12-01', 'divya@example.com'),
(14, 'Ravi', 'Marketing', 56000, '2023-04-18', NULL),
(15, 'Ashok', 'IT', 60000, '2022-06-30', 'ashok@example.com'),
(16, 'Meena', 'HR', 45000, '2021-10-22', 'meena@example.com'),
(17, 'Ajay', 'IT', 0, NULL, 'ajay@example.com'),
(18, 'Swathi', 'Finance', 59000, '2023-01-01', NULL),
(19, 'Naveen', 'IT', 52000, '2021-09-11', 'naveen@example.com'),
(20, 'Bhavya', 'Admin', 51000, '2023-05-01', NULL);

--Show all employee details
SELECT * FROM Employees_N;

--Find all employees in the IT or HR department
SELECT * FROM Employees_N
WHERE Department IN ('IT', 'HR');

--Find employees with salary between 50,000 and 60,000
SELECT * FROM Employees_N
WHERE Salary BETWEEN 50000 AND 60000;

--Find employees whose name starts with 'A'
SELECT * FROM Employees_N
WHERE Name LIKE 'A%';

--List employees who have not provided their email
SELECT * FROM Employees_N
WHERE Email IS NULL;

--List employees who have a join date
SELECT * FROM Employees_N
WHERE JoinDate IS NOT NULL;

--Display all employees sorted by Salary in descending order
SELECT * FROM Employees_N
ORDER BY Salary DESC;

--Display the first 3 highest paid employees
SELECT * FROM Employees_N
ORDER BY Salary DESC
OFFSET 0 ROWS FETCH NEXT 3 ROWS ONLY;

--Display employees 4 to 6 based on their salary
SELECT * FROM Employees_N
ORDER BY Salary DESC
OFFSET 3 ROWS FETCH NEXT 3 ROWS ONLY;

--Find employees who joined after 1-Jan-2021
SELECT * FROM Employees_N
WHERE JoinDate > '2021-01-01';

--List employees with a NULL join date or salary 0
SELECT * FROM Employees_N
WHERE JoinDate IS NULL OR Salary = 0;

--Aggregate functions

select *from Employees_N;

--sum of all salaries
select sum(salary) as Totalsalary 
from Employees_N;

--min and max salary
select min(salary) as Minsalary, max(salary) as Maxsalary
from Employees_N;

--using aagregate function with group by
select Department,count(*) as TotalEmployees,avg(salary) as Avgsalary
from Employees_N
group by Department;

--Having clause to filter groups
select Department, count(*) as TotalEmployees
from Employees_N
group by Department
having count(*) >3;

--calculate if total salary exceed 1 lakh
select Department,sum(salary) as Totalsalary
from Employees_N
group by Department
having SUM(salary)>=100000;



--NOT NULL : Ensure col can not have null values.
create table student
(Id int not null,
Name varchar(40) null,
Age int
);
Select * from student;
drop table student;
--UNIQUE :  ensure all value in col are unique.
create table student
(Id int not null,
Name varchar(40) null  UNIQUE,
Age int
);

--PRIMARY KEY : uniquely identify each record , auto incrmet, not null
create table student
(Id int PRIMARY KEY,
Name varchar(40) null  UNIQUE,
Age int
);

--FOREIGN KEY : link more than table to maintain referential interity.
create table orders
(OrderId int primary key,
customerId int,
FOREIGN KEY(customerId) REFERENCES Customers(CustomerId);
 
--CHECK : ensure that value meet specific criteria
create table course
(Id int primary key,
price decimal(10,2) CHECK(price>=30000),
name varchar(50)
);
 
--DEFAULT : assing a default vlaue if none is given by user.
create table account
(Ac int primary key,
accDate date default GETDATE(),
Status varchar(40) DEFAULT 'Active'
);






