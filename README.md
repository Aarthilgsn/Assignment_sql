# 📘 SQL Practice & Project README

This repository contains SQL practice projects and assignments, organized into themed modules. Each module demonstrates real-world database usage, schema design, data manipulation, and SQL Server-specific features.

---

## 📁 1. SQLQuery1.sql - SQL Basics & Commands
**Topic**: Database Management, Table Operations, String & Math Functions  
**Database**: `aarthi_test`, later renamed to `thee`

### 🔹 Covered:
- `CREATE`, `ALTER`, `DROP`, `RENAME`, `INSERT`, `DELETE`, `UPDATE`
- Constraints: `PRIMARY KEY`, `NOT NULL`, `UNIQUE`
- Filtering: `WHERE`, `BETWEEN`, `IN`, `LIKE`, `NOT LIKE`, `NULL`
- Sorting: `ORDER BY`, `OFFSET` / `FETCH`
- String functions: `LEN`, `LTRIM`, `RTRIM`, `UPPER`, `REPLACE`, `CONCAT`
- Math functions: `ABS`, `CEILING`, `FLOOR`, `POWER`, `SQRT`
- Date/time functions: `GETDATE`, `DATEDIFF`, `DATEADD`, `SYSDATETIME`

---

## 📁 2. SQLQuery2.sql - TechShop Project
**Topic**: E-commerce Store Database
**Database**: `TechShop`

### 🔹 Tables:
- `Customer`, `Products`, `Orders`, `OrderDetails`, `Inventory`

### 🔹 Tasks Covered:
- Order management and relations using `FOREIGN KEY`
- Queries using `JOIN`, `LIKE`, `UPDATE`, `DELETE`, `DATE`, `BETWEEN`
- Inventory management
- Total calculation updates using `JOIN`
- Customer order counts with `ALTER TABLE` + `UPDATE`

---

## 📁 3. SQLQuery3.sql - Employee Management System
**Topic**: HR & Salary Data Analysis
**Database**: `Employee Management System`

### 🔹 Tables:
- `Employees_N` (Employee master data)

### 🔹 Tasks Covered:
- Salary-based filtering (`BETWEEN`, `ORDER BY`)
- Join date conditions
- Aggregations (`SUM`, `AVG`, `MIN`, `MAX`, `GROUP BY`, `HAVING`)
- NULL checks, pattern searches
- Constraint examples: `PRIMARY KEY`, `UNIQUE`, `CHECK`, `DEFAULT`, `FOREIGN KEY`

---

## 📁 4. SQLQuery4.sql - Student-Teacher-Course Management
**Topic**: Education Database Schema with JOINS
**Database**: `Student management system`

### 🔹 Tables:
- `Dept`, `Teacher`, `Course`, `Student`

### 🔹 Tasks Covered:
- Relationships using `FOREIGN KEY`
- Examples of: `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `FULL OUTER JOIN`
- Student–Dept–Teacher–Course link

---

## 📁 5. SQLQuery5.sql - Expense Tracker App
**Topic**: User-Expense Tracker
**Database**: `Ecommerce`

### 🔹 Tables:
- `Users`, `Expenses`, `ExpenseCategories`

### 🔹 Covered:
- Proper FK linking across `UserID` and `CategoryID`
- Use of `DECIMAL`, `NOT NULL`, and optional descriptions

---

## 📁 6. SQLQuery6.sql - Transport Management System
**Topic**: Bus/Trip Booking Management
**Database**: `Transport management application`

### 🔹 Tables:
- `Vehicles`, `Routes`, `Trips`, `Passengers`, `Bookings`

### 🔹 Covered:
- Complex schema with `CHECK` constraints
- Handling of statuses: `Scheduled`, `On Trip`, `Completed`, etc.
- Realistic fields like `TripType`, `MaxPassengers`, and identity usage

---

## 📁 7. SQLQuery7.sql - SQL Function Practice
**Topic**: String, Math, Date, System Functions
**Database**: `sql_functions`

### 🔹 Table:
- `Student`

### 🔹 Covered:
- `UPPER`, `LEN`, `SUBSTRING`, `REPLACE`, `CONCAT`, `CHARINDEX`, `LTRIM`, `RTRIM`
- `ABS`, `ROUND`, `GETDATE`, `DATEDIFF`, `DATENAME`, `DATEADD`

---

## 📁 8. SQLQuery8.sql - SQL Code Challenge
**Topic**: Performance & Department Metrics
**Database**: `Employee_database`

### 🔹 Tables:
- `Employee`, `Department`, `Performance`

### 🔹 Tasks:
- Top 3 performers by score
- Department-wise average score
- Employees with salary above average AND latest score > 80
- New joiners in the last year (using `DATEADD` and `GETDATE`)

---

## 📌 Notes:
- Each SQL file starts with database context using `USE [DatabaseName]`
- Constraints and relationships are carefully implemented
- Multiple real-world use cases are demonstrated
- These scripts can be directly executed in **SQL Server 2022** / **SSMS** / **Visual Studio SQL projects**

---

## ✅ Recommended Usage:
- Import each `.sql` file into your SQL Server IDE.
- Run commands section by section for better understanding.
- Use the README to navigate project scope quickly.

---

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
```#SQLServer``` ```#DatabaseManagement``` ```#SQLQueries``` ```#RelationalDatabases``` ```#DataManipulation``` ```#SQLFunctions``` ```#DatabaseDesign```



