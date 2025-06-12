# SQL QUERY
This repository contains a collection of SQL scripts (SQLQuery1.sql to SQLQuery8.sql) designed to demonstrate various SQL Server operations, including database and table creation, data manipulation, querying, and advanced SQL techniques. Each script focuses on a specific database scenario, such as employee management, e-commerce, student management, transport management, and more. Below is a detailed overview of each script, including its purpose, table structures, key operations, and intended learning outcomes.

# SQLQuery1.sql: Basic SQL Operations and Database Management
## Overview
-  SQLQuery1.sql introduces fundamental SQL Server operations by creating and managing a database named aarthi_test (later renamed to thee) and a table named Emp (later renamed to Employee). It covers database creation, table manipulation, data insertion, updates, deletions, and various querying techniques, including string, mathematical, and date/time functions.
Key Components

## Database Operations
-  Creates ```aarthi_test``` database.
-  Renames it to thee using ```ALTER DATABASE.```
-  Demonstrates dropping a database (commented example for aarthi_db).
-  Lists all databases with ```SELECT``` name ```FROM sys.databases.```
-  Retrieves current database name using ```SELECT DB_NAME().```


## Table Operations
-  **Creates Emp table with columns:** EmpId (primary key), Name, Age, Dept, HireDate.
Inserts 5 records.
-  Views table structure using ```sp_help``` and ```INFORMATION_SCHEMA.COLUMNS.```
-  **Alters table:** adds/drops Email column, modifies Name column size, adds/drops primary key.
-  Renames table to Employee using sp_rename.
-  Deletes rows ```(DELETE)```, truncates table ```(TRUNCATE)```, and updates data ```(UPDATE).```


## Queries
-  Selects specific columns and filters using ```WHERE```, ```BETWEEN```, ```IN```, ```LIKE```, ```IS NULL```, and ```ORDER BY.```
-  Uses ```OFFSET-FETCH``` to retrieve specific rows (e.g., top 3 or rows 3-4).
-  Applies logical/relational operators (```AND```, ```OR```,``` NOT```, <, >, etc.).


## Employee_new Table
-  **Creates table with columns:** ID (auto-incremented), Name, EmailID, Gender, Department, Salary, Age, CITY.
Inserts 13 records.
-  Queries top 3 employees by salary and skips first 2 to fetch next 2.


## Functions
-  **String:**  LEN, LTRIM, RTRIM, SUBSTRING, REPLACE, LEFT, CONCAT.
-  **Math:**  ABS, CEILING, FLOOR, POWER, SQRT.
-  **Date/Time:**  GETDATE, GETUTCDATE, SYSDATETIME, DATEADD, DATEDIFF.
-  **System:**  @@VERSION, @@IDENTITY.

## Purpose
This script is a beginner-friendly tutorial for learning SQL Server basics, including database management, table operations, querying, and built-in functions. It’s ideal for understanding core SQL concepts.
____________________________________________________________________________________________________________________________________________________________________________________________________________________
# SQLQuery2.sql: E-Commerce Database for Tech Shop
## Overview
SQLQuery2.sql designs a TechShop database to simulate an e-commerce system for managing customers, products, orders, and inventory. It demonstrates table creation with foreign key relationships, data insertion, and advanced queries for data manipulation and retrieval.
## Key Components

## Table Creation and Data Insertion
-  **Customer:**
      -  **Columns:** Customer_id (primary key), C_Firstname, C_Lastname, C_Email, C_Phone, C_Address. Inserts 10 records.
      -  **Products:** Columns: P_id (primary key), P_name, P_description, P_price. Inserts 10 electronic gadgets (e.g., Laptop, Smartphone).
      -  **Orders:** Columns: Order_id (auto-incremented primary key), Customer_id (foreign key), Order_date, Total_amt. Inserts 10 records.
      -  **OrderDetails:** Columns: OrderDetail_id (auto-incremented), Order_id (foreign key), P_id (foreign key), Quantity. Inserts 10 records.
      -  **Inventory:** Columns: Inventory_id (auto-incremented), P_id (foreign key), QuantityInStock, LastStockUpdate. Inserts 10 records.


## Queries and Operations
  1.  Retrieves customer names and emails.
  2.  Lists orders with customer names using INNER JOIN.
  3.  Inserts a new customer (ID: 11, Sanjay D).
  4.  Increases product prices by 10% for electronic gadgets.
  5.  Deletes order and details for Order_id = 8.
  6.  Inserts a new order for Customer_id = 11.
  7.  Updates customer contact info for Customer_id = 1.
  8.  Recalculates Total_amt in Orders using a subquery.
  9.  Deletes orders and details for Customer_id = 10.
  10. Inserts a new product (Smart Speaker).
  11. Adds Status column to Orders and updates status for Order_id = 7.
  12. Adds OrderCount column to Customer and updates with order counts.

## Purpose
This script simulates a retail database, teaching relational database design, foreign key constraints, and complex SQL operations like joins, updates, and deletions. It’s suitable for learning e-commerce data management.
____________________________________________________________________________________________________________________________________________________________________________________________________________________
# SQLQuery3.sql: Employee Management System
## Overview
SQLQuery3.sql manages an Employee Management System database with an Employees_N table. It focuses on querying techniques (filtering, sorting, aggregation) and demonstrates SQL constraints through a student table.
## Key Components

-  **Employees_N Table:**
-  **Columns:** EmpID (primary key), Name, Department, Salary, JoinDate, Email.
-  Inserts 20 records with some ```NULL``` values.
-  **Queries:**
-  Selects all employees.
-  Filters by department (IT, HR), salary (50,000-60,000), name starting with 'A', ```NULL``` email, or ```non-NULL``` join date.
-  Sorts by salary (ORDER BY DESC).
-  Retrieves top 3 and 4th-6th highest-paid employees using ```OFFSET-FETCH.```
-  Filters employees joined after January 1, 2021, or with ```NULL``` join date/zero salary.


## Aggregations
- **SUM:** Total salary.
- **MIN, MAX:** Minimum and maximum salaries.
- **COUNT, AVG with GROUP BY:** Employee count and average salary by department.
- **HAVING:** Filters departments with >3 employees or total salary ≥ 100,000.


## Constraints (Student Table Examples)
- **NOT NULL:** Ensures Id is not null.
- **UNIQUE:** Ensures Name is unique.
- **PRIMARY KEY:** Sets Id as primary key.
- **FOREIGN KEY:** Links Orders to Customers.
- **CHECK:** Ensures price ≥ 30,000 in course table.
- **DEFAULT:** Sets default accDate (current date) and Status ('Active') in account table.


## Purpose
This script is ideal for practicing SQL queries (filtering, sorting, aggregation) and learning database constraints. It’s useful for managing employee data and understanding constraint enforcement.
____________________________________________________________________________________________________________________________________________________________________________________________________________________
# SQLQuery4.sql: Student Management System
## Overview
SQLQuery4.sql creates a Student Management System database with tables for departments, teachers, courses, and students. It demonstrates foreign key relationships and various SQL join types.
## Key Components

-  Table Creation and Data Insertion:
-  Dept: Columns: DeptID (primary key), DeptName. Inserts 4 records (e.g., Computer Science).
-  Teacher: Columns: TeacherID (primary key), TeacherName, DeptID (foreign key). Inserts 5 records.
-  Course: Columns: CourseID (primary key), CourseName, DeptID (foreign key), TeacherID (foreign key). Inserts 5 records.
-  Student: Columns: StudentID (primary key), SName, DeptID (foreign key). Inserts 6 records.


## Join Queries
-  **Basic Join:** Joins Student and Dept to show student IDs, names, and department names.
-  **Inner Join:** Same as basic join, explicitly using INNER JOIN.
-  **Left Join:** Includes all students, even without a department.
-  **Right Join:** Includes all departments, even without students.
-  **Full Outer Join:** Includes all students and departments, matching where possible.



## Purpose
This script teaches relational database design and SQL join operations. It’s ideal for understanding how to link tables and retrieve data in a student management context.
____________________________________________________________________________________________________________________________________________________________________________________________________________________
# SQLQuery5.sql: E-Commerce Expense Tracking
## Overview
SQLQuery5.sql sets up an Ecommerce database for tracking user expenses, with tables for users, expenses, and expense categories. It emphasizes foreign key relationships for data integrity.
Key Components

## Table Creation
-  **Users: Columns:** UserID (primary key), Username (not null), Password (not null), Email (not null).
-  **ExpenseCategories:** Columns: CategoryID (primary key), CategoryName (not null).
-  **Expenses:** Columns: ExpenseID (primary key), UserID (foreign key), Amount (not null), CategoryID (foreign key), Description, ExpenseDate (not null).

## Queries
Selects all records from Users, Expenses, and ExpenseCategories (empty, as no data is inserted).

## Purpose
This script provides a foundation for an expense tracking system, focusing on table creation and foreign key constraints. It’s suitable for learning relational database setup in an e-commerce context.
____________________________________________________________________________________________________________________________________________________________________________________________________________________
# SQLQuery6.sql: Transport Management System
## Overview
SQLQuery6.sql creates a Transport Management Application database for managing vehicles, routes, trips, passengers, and bookings. It includes constraints for data validity and foreign key relationships.
Key Components

## Table Creation
-  **Vehicles:** Columns: VehicleID (auto-incremented primary key), Model (not null), Capacity (not null), Type, Status (CHECK: 'Available', 'On Trip', 'Maintenance').
-  **Routes:** Columns: RouteID (auto-incremented), StartDestination (not null), EndDestination (not null), Distance (not null).
-  **Trips:** Columns: TripID (auto-incremented), VehicleID (foreign key), RouteID (foreign key), DepartureDate (not null), ArrivalDate (not null), Status (CHECK: 'Scheduled', 'In Progress', 'Completed', 'Cancelled'), TripType (default: 'Freight'), MaxPassengers.
- **Passengers:** Columns: PassengerID (auto-incremented), FirstName (not null), Gender, Age, Email (unique), PhoneNumber.
- **Bookings:** Columns: BookingID (auto-incremented), TripID (foreign key), PassengerID (foreign key), BookingDate (not null), Status (CHECK: 'Confirmed', 'Cancelled', 'Completed').

## Queries
Selects all records from all tables (empty, as no data is inserted).

## Purpose
This script establishes a transport management database, teaching constraints (CHECK, DEFAULT, UNIQUE) and foreign keys. It’s ideal for learning data modeling for transportation systems.
____________________________________________________________________________________________________________________________________________________________________________________________________________________
# SQLQuery7.sql: SQL Functions with Student Data
## Overview
SQLQuery7.sql manages a sql_functions database with a Student table and demonstrates various SQL functions for string, mathematical, and date/time operations.
## Key Components

-  Student Table:
-  Columns: S_ID (primary key), Name, Marks, DOB, Email, Address, AdmissionDate, CourseName, DeptName, Fees.
-  Inserts 20 student records.


## Function Queries
-  **UPPER:** Converts names to uppercase.
-  **LEN:** Calculates name length.
-  **SUBSTRING:** Extracts first 3 characters of CourseName.
-  **REPLACE:** Replaces 'a' with 'x' in DeptName.
-  **CONCAT:** Concatenates Name with 'Kumar'.
-  **CHARINDEX:** Finds '@' position in Email.
-  **LTRIM/RTRIM:** Removes spaces from Address.
-  **ABS:** Returns absolute Marks.
-  **ROUND:** Rounds Fees to 2 decimal places.
-  **GETDATE:** Shows current date/time.
-  **DATEADD:** Adds 30 days to AdmissionDate.
-  **DATEDIFF:** Calculates days enrolled since AdmissionDate.
-  **DATENAME:** Extracts month name from AdmissionDate.



## Purpose
This script is designed for practicing SQL functions, focusing on string, math, and date/time operations. It’s useful for learning how to process and analyze data using built-in functions.
____________________________________________________________________________________________________________________________________________________________________________________________________________________
# SQLQuery8.sql: Employee Performance Analysis
## Overview
SQLQuery8.sql manages an Employee_database with tables for employees, departments, and performance reviews. It includes data insertion and advanced queries for performance analysis.
Key Components

## Table Creation and Data Insertion
-  Employee: Columns: EmpID (primary key), Name, DepartmentID, Salary, Hiredate. Inserts 5 records, updates Hiredate for EmpID = 104.
-  Department: Columns: DepartmentID (primary key), Departmentname. Inserts 3 records (HR, IT, Finance).
-  Performance: Columns: PerformanceId (primary key), EmployeeID (foreign key), Reviewdate, Score. Inserts 8 records.


## Queries
-  **Top Performers:** Selects top 3 employees by performance score, including names, department names, scores, and review dates.
-  **Department-Wise Average Score:** Calculates average performance score per department.
-  **Salary vs. Performance:** Lists employees with above-average salaries and scores > 80.
-  **New Joiners:** Retrieves employees hired within the last year using DATEADD.

## Purpose
This script teaches advanced SQL querying, including joins, aggregation, and date-based filtering. It’s ideal for analyzing employee performance data in a relational database.
____________________________________________________________________________________________________________________________________________________________________________________________________________________
# How to Use This Repository

-  ```Clone the Repository:``` Use git clone to download the scripts to your local machine.
-  ```Run the Scripts:``` Execute each SQL script in SQL Server Management Studio (SSMS) or a compatible SQL environment.
-  ```Explore the Queries:``` Review the scripts to understand SQL operations, from basic table creation to complex joins and aggregations.
-  ```Learn and Experiment:``` Modify the queries or data to practice and deepen your SQL knowledge.

# Learning Outcomes

-  Understand SQL Server database and table management.
-  Master data insertion, updates, deletions, and querying techniques.
-  Learn to use constraints (e.g., PRIMARY KEY, FOREIGN KEY, CHECK, DEFAULT).
-  Practice SQL joins (INNER, LEFT, RIGHT, FULL OUTER).
-  Apply built-in functions for string, math, and date/time operations.
-  Perform advanced queries with aggregations, filtering, and sorting.

# Developed and Practiced By

```Email:``` aarthilgsn@gmail.com

```LinkedIn:``` www.linkedin.com/in/aarthi08


# Tags
#SQLServer #DatabaseManagement #SQLQueries #RelationalDatabases #DataManipulation #SQLFunctions #DatabaseDesign



