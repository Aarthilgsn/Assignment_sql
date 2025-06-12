## README: SQLQuery1.sql
# Overview
This SQL script demonstrates fundamental database operations using SQL Server. It focuses on creating and managing a database named aarthi_test (later renamed to thee), creating and manipulating a table named Emp (later renamed to Employee), and performing various SQL operations such as data insertion, updates, deletions, and queries with conditions, string functions, mathematical functions, and date/time operations.
Key Components
Database Operations

# Create Database: 
-- Creates a database named aarthi_test.
-- Rename Database: Renames aarthi_test to thee using the ALTER DATABASE command.
-- Drop Database: Includes a commented example to drop a database (aarthi_db), with a note that the database in use cannot be dropped.
-- List Databases: Uses SELECT name FROM sys.databases to list all databases.
-- Current Database: Retrieves the current database name using SELECT DB_NAME().

# Table Operations

-- Create Table: Creates an Emp table with columns: EmpId (primary key), Name, Age, Dept, and HireDate.
-- Insert Data: Inserts five records into the Emp table.
View Table Structure: Uses sp_help 'Emp' and INFORMATION_SCHEMA.COLUMNS to display table structure.
Alter Table:
Adds a new Email column.
Drops the Email column.
Modifies the Name column size from VARCHAR(50) to VARCHAR(100).
Adds and drops a primary key constraint (PK_EMP).


Rename Table: Renames Emp to Employee using sp_rename.
Delete Data: Deletes a specific row where EmpId = 1.
Truncate Table: Demonstrates the TRUNCATE TABLE command to remove all rows while preserving the table structure.
Update Data: Updates specific rows and multiple columns (e.g., Name and Age).

Query Operations

Select Specific Columns: Retrieves specific columns (Name, Age) from the Employee table.
WHERE Clause: Filters data using conditions (e.g., Age > 25, Name = 'suba' AND EmpId = 4).
Operators:
Logical: AND, OR, NOT.
Relational: <, >, <>, <=, >=, =, !=.
BETWEEN: Filters Age, HireDate, and Name within specific ranges.
IN and NOT IN: Filters Dept values.
LIKE: Pattern matching for Name (e.g., starts with 's', contains 'ub', etc.).
IS NULL and IS NOT NULL: Checks for null values in Name.


ORDER BY: Sorts data in ascending (ASC) or descending (DESC) order.
OFFSET-FETCH: Retrieves specific rows (e.g., first 3 rows or rows 3 to 4) based on Name or Salary.

Additional Table: Employee_new

Create Table: Creates Employee_new with columns: ID (auto-incremented primary key), Name, EmailID, Gender, Department, Salary, Age, and CITY.
Insert Data: Inserts 13 records into Employee_new.
Queries:
Retrieves the top 3 employees by salary in ascending order.
Skips the first 2 employees and fetches the next 2 based on salary.



String, Math, and Date/Time Functions

String Functions:
LEN: Returns the length of Name.
LTRIM and RTRIM: Removes leading and trailing spaces.
SUBSTRING: Extracts a portion of a string (e.g., 'SQL Server').
REPLACE: Replaces characters in a string.
LEFT: Extracts leftmost characters.
CONCAT: Concatenates strings.


Math Functions:
ABS: Returns the absolute value.
CEILING and FLOOR: Rounds numbers up or down.
POWER: Calculates exponentiation.
SQRT: Calculates square root.


Date/Time Functions:
GETDATE: Returns the current date and time.
GETUTCDATE: Returns the current UTC date and time.
SYSDATETIME: Returns high-precision date and time.
DATEADD: Adds days to a date.
DATEDIFF: Calculates the difference between dates in days or months.


System Functions:
@@VERSION: Returns SQL Server version.
@@IDENTITY: Returns the last identity value generated.



Purpose
This script serves as a comprehensive tutorial on basic SQL Server operations, covering database and table management, data manipulation, and querying with various operators and functions. It is ideal for beginners learning SQL Server fundamentals.

