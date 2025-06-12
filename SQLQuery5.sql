--PRACTICE ASSIGNMENT(DATABASE ECOMMERCE)

use Ecommerce;

--user table creation 
create table Users(
UserID INT primary key,
Username VARCHAR(50) not null,
Password varchar(50) not null,
Email varchar(100) not null
);

--Expense table creation 
create table Expenses(
ExpenseID INT primary key,
UserID INT not null,
Amount decimal(10,2) not null,
CategoryID INT,
Description varchar(255),
ExpenseDate date not null,

FOREIGN KEY (UserID) REFERENCES Users(UserId),
FOREIGN KEY (CategoryID) REFERENCES ExpenseCategories(CategoryID)
);

--ExpenseCtegories table creation
create table ExpenseCategories(
CategoryID INT primary key,
CategoryName varchar(50) not null
);

select * from Users;
select * from Expenses;
select * from ExpenseCategories;
