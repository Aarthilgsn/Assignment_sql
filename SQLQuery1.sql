--create a database named aarthi_test : create command
create database aarthi_test;

--use the database aarthi_test : use command
use aarthi_test;

--rename a database (use with caution) : ALTER command
ALTER DATABASE aarthi_test
MODIFY NAME=thee;

use thee;

--drop a database (use with caution) : Drop command
DROP database aarthi_db;--here can't able to delete the database because it is in use so if you want delete the database try to delete different database which is not in use

--view and list databases
--list all database
SELECT name FROM sys.databases;--here aarthi_db is not listed because it is deleted

--get the current database name
SELECT DB_NAME() AS currentDatabase;

--create a table in the database : create command
create table Emp(
EmpId int primary key,
Name varchar(50),
Age int,
Dept varchar(50),
HireDate date
);

--insert data into the table : insert command
INSERT INTO Emp values(1,'sachin',25,'Game','2023-01-01');
INSERT INTO Emp values(2,'bob',22,'cs','2025-05-05');
INSERT INTO Emp values(3,'madhu',28,'web','2022-07-02');
INSERT INTO Emp values(4,'suba',36,'Hr','2020-07-01');
INSERT INTO Emp values(5,'ashok',30,'product','2022-03-08');

--see the data in the table : select command
select * from Emp;

--view the table structure in a detailed manner : sp_help command
exec sp_help 'Emp';

select * from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME='Emp';--this query will give the columns details of the table

--Add a new column to the table : Alter command
ALTER TABLE Emp 
ADD Email varchar(100);

--drop a column from the table : Alter command
alter table Emp 
drop column Email;

--modify a column in the table : Alter command
alter table Emp
alter column Name varchar(100);--here we are changing the size of the column from 50 to 100

--add a  primary key to the table : Alter command and constraint
alter table Emp
ADD CONSTRAINT PK_EMP PRIMARY KEY(EmpId);

--drop a primary key from the table : Alter command and constraint
Alter table Emp
Drop constraint PK_EMP;--here PK_EMP is the alias name of the primary key constraint

--delete the row from the table : delete command
delete from Emp
where EmpId=1;--here we are deleting the row where EmpId is 1

--here truncate command is used to delete all the rows from the table but it will not delete the table structure
truncate table Emp;

--update the specific row in the table : update command
update Emp
set Name ='bobii'
where EmpId=2;

--update multiple columns in the table : update command
update Emp
set Name='aesun',Age=25
where EmpId=2;

--rename the table : sp_rename command
--sql server does not support rename table command where as mysql supports, in sql server we can use sp_rename command
sp_rename 'Emp', 'Employee';--here we are renaming the table Emp to Employee so to use the table we need to use the new name Employee

SELECT * FROM Employee;

--select specific column
select Name,age
from Employee;

--where clause
select * from Employee
Where age>25;

--operator with select, where clause
--relational operator, logical operator
select * from Employee
where Name='suba' AND EmpId=4;

select * from Employee 
where Name='ashok' or EmpId=5;

select * from Employee
where not Name='ashok';
-- <,>,<>,<=,>=,=,!= operators

--between operator
select Name,HireDate from Employee
where age between 26 and 35;

--between with date
select * from Employee
where hiredate between '2022-01-01' and '2023-12-31';

--use alphabet in between
select * from Employee
where Name between 'a' and 'm';

--in operator
select * from Employee
where Dept in ('game','cs');

--not in operator
select * from Employee
Where Dept not in ('hr','web');

--Like operator(pattern matching)

--start with single character
select * from Employee
where Name like 's%';

--end with single charcter
select * from Employee
where Name like '%n%';

--substring match
select * from Employee
where Name like '%ub%';

--single character 
select * from Employee
where Name like '_a%';

--not like operator
select * from Employee
where Name not like 's%';

--Null values in sql server
select Name from Employee 
where name is null;

--Not null values in sql server
select Name from Employee
where name is not null;

--order by clause
--Ascending order
select * from Employee
order by Name asc;

--Descending order
select Name, Age 
from Employee
where Age >25
order by Name desc;

--fetch 3 rows from the table
select * from Employee
order by Name asc
offset 0 rows
fetch next 3 rows only;

--skip 2 rows and fech next 2 rows
select Name, Age from Employee
order by name asc
offset 2 rows
fetch next 2 rows only;

CREATE TABLE Employee_new
(
  ID INT PRIMARY KEY IDENTITY(1,1),
  Name VARCHAR(100),
  EmailID VARCHAR(100),
  Gender VARCHAR(100),
  Department VARCHAR(100),
  Salary INT,
  Age INT,
  CITY VARCHAR(100)
);
--Insert some data into Employee table
INSERT INTO Employee_new VALUES('Pranaya','Pranaya@g.com','Male', 'IT', 25000, 30,'Mumbai');
INSERT INTO Employee_new VALUES('Tarun','Tarun@g.com','Male', 'Payroll', 30000, 27,'Odisha');
INSERT INTO Employee_new VALUES('Priyanka','Priyanka@g.com','Female', 'IT', 27000, 25,'Bangalore');
INSERT INTO Employee_new VALUES('Preety','Preety@g.com','Female', 'HR', 35000, 26,'Bangalore');
INSERT INTO Employee_new VALUES('Ramesh','Ramesh@g.com','Male','IT', 26000, 27,'Mumbai');
INSERT INTO Employee_new VALUES('Pramod','Pramod@g.com','Male','HR', 29000, 28,'Odisha');
INSERT INTO Employee_new VALUES('Anurag','Anurag@g.com','Male', 'Payroll', 27000, 26,'Odisha');
INSERT INTO Employee_new VALUES('Hina','Hina@g.com','Female','HR', 26000, 30,'Mumbai');
INSERT INTO Employee_new VALUES('Sambit','Sambit@g.com','Male','Payroll', 30000, 25,'Odisha');
INSERT INTO Employee_new VALUES('Manoj','Manoj@g.com','Male','HR', 30000, 28,'Odisha');
INSERT INTO Employee_new VALUES('Sara',' Sara@g.com','Female', 'Payroll', 28000, 27,'Mumbai');
INSERT INTO Employee_new VALUES('Lima','Lima@g.com','Female','HR', 30000, 30,'Bangalore');
INSERT INTO Employee_new VALUES('Dipak','Dipak@g.com','Male','Payroll', 32000, 25,'Bangalore');

select * from Employee_new;

--fetch 3 first emp by sal asc
select Name, Salary from Employee_new
order by Salary asc
OFFSET 0 ROWS
FETCH NEXT 3 ROWS ONLY;
 
-- SKIP 2 firt emp and fetch next 2
select Name, salary from Employee_new
order by salary asc
OFFSET 2 ROWS
FETCH NEXT 2 ROWS ONLY;

--Stirng functions in sql server
select len(Name) as NameLength from Employee_new;

--left trim function
select LTRIM('    computer is a machine') as ltrimmedstring;

--right trim function
select rtrim('computer is a machine     ') as rtrimmedstring;

--UPPER
--substring 
SELECT SUBSTRING('SQL Server',5,6);

--replace
select REPLACE('abc abc','a','x');
 
--left and right
select left('India si great',3);

--concate
select concat('Java','','oracle');
 
--math
select abs(-100);
select CEILING(4.3);--rounds up the number to the nearest integer
select FLOOR(4.8);--rounds down the number to the nearest integer
select power(2,3);
select SQRT(16);

--date and time
select GETDATE();--return the current date and time
select GETUTCDATE();--returns the current date and time in UTC
select SYSDATETIME();--returns the current date and time with more presision
 
select DATEADD(day,5,'2025-06-01');--adds 5 days to the given date
 
select DATEDIFF(day,'2025-06-01','2025-07-12');--calculates the diff in days between two dates
 
select DATEDIFF(MONTH,'2025-06-01','2025-07-12');--calculates the diff in months between two dates
 
--system function
select @@VERSION;--return the version of the sql server
SELECT @@IDENTITY;--returns the last identity value generated in the current session