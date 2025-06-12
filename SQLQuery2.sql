--TASK-1 DATABASE DESIGN

use TechShop;

--customer table creation and data insertion
create table customer(
Customer_id int primary key,
C_Firstname varchar(50),
C_Lastname varchar(50),
C_Email varchar(100),
C_Phone varchar(15),
C_Address varchar(200)
);

insert into customer values(1,'John','Doe','john@gmail.com','1234567890','123 Elm st');
insert into customer values(2,'Jane','Smith','jane@gmail.com','0987654321','456 oak st');
insert into customer values(3,'Alice','Jones','alice@gamil.com','1122334455','789 pine st');
insert into customer values(4,'Divya','shree','divya@gamil.com','1233214565','452 abu st');
insert into customer values(5,'Ravi','kumar','ravi@gmail.com','9876543210','321 maple st');
insert into customer values(6,'sita','shree','sita@gmail.com','4567891230','654 ceder st');
insert into customer values(7,'sachin','tendu','sach@gamil.com','7894561230','987 willow st');
insert into customer values(8,'bob','marley','bob@gmail.com','3216549876','156 birch st');
insert into customer values(9,'madhu','sree','madhu@gmail.com','6543217890','753 cherry st');
insert into customer values(10,'suba','sree','suba@gamil.com','3217896540','852 ash st');

select * from customer;
select * from products;
select * from orders;
select * from OrderDetails;
--select * from Inventory;

--products table creation and data insertion
create table products(
P_id int primary key,
P_name varchar(100),
P_description varchar(255),
P_price decimal(10,2)
);

insert into products values(1,'Laptop','High performance laptop','60000.00');
insert into products values(2,'smartphone','Latest smartphone with 5g','45000.00');
insert into products values(3,'Tablet','Portable tablet with stylus','55000.00');
insert into products values(4,'smartwatch','smartwatch with health tracking','15000.00');
insert into products values(5,'Headphones','Noise cancelling headphones','8000.00');
insert into products values(6,'Blutooth speaker','portable bluetooth speaker','5000.00');
insert into products values(7,'Smart TV','4k smart tv with HDR','80000.00');
insert into products values(8,'Gaming console','Next gen gaming console','40000.00');
insert into products values(9,'Camera','DSLR camera with 24mp','70000.00');
insert into products values(10,'Printer','All in one printer with scanner','20000.00');

select * from products;

--orders table creation and data insertion
CREATE TABLE Orders (
    Order_id INT PRIMARY KEY IDENTITY(1,1),
    Customer_id INT,
    Order_date DATE,
    Total_amt DECIMAL(10, 2),
    FOREIGN KEY (Customer_id) REFERENCES customer(Customer_id)
);

insert into orders (Customer_id,Order_date,Total_amt) values
(1,'2023-10-01',60000.00),
(2,'2023-10-02',45000.00),
(3,'2023-10-03',55000.00),
(4,'2023-10-04',15000.00),
(5,'2023-10-05',8000.00),
(6,'2023-10-06',5000.00),
(7,'2023-10-07',80000.00),
(8,'2023-10-08',40000.00),
(9,'2023-10-09',70000.00),
(10,'2023-10-10',20000.00);

select * from orders;

--order details table creation and data insertion
CREATE TABLE OrderDetails (
    OrderDetail_id INT PRIMARY KEY IDENTITY(1,1),
    Order_id INT,
    P_id INT,
    Quantity INT,
    FOREIGN KEY (Order_id) REFERENCES Orders(Order_id),
    FOREIGN KEY (P_id) REFERENCES Products(P_id)
);

INSERT INTO OrderDetails (Order_id, P_id, Quantity)
VALUES 
(1, 1, 1),
(1, 2, 1),
(2, 3, 1),
(3, 8, 1),
(4, 5, 1),
(5, 7, 1),
(6, 4, 1),
(7, 6, 1),
(8, 2, 1),
(9, 10, 1);

select * from OrderDetails;

--Inventory table creation and data insertion
CREATE TABLE Inventory (
    Inventory_id INT PRIMARY KEY IDENTITY(1,1),
    P_id INT,
    QuantityInStock INT,
    LastStockUpdate DATE,
    FOREIGN KEY (P_id) REFERENCES Products(P_id)
);

INSERT INTO Inventory (P_id, QuantityInStock, LastStockUpdate)
VALUES 
(1, 20, '2024-05-01'),
(2, 50, '2024-05-01'),
(3, 30, '2024-05-01'),
(4, 15, '2024-05-01'),
(5, 10, '2024-05-01'),
(6, 25, '2024-05-01'),
(7, 40, '2024-05-01'),
(8, 35, '2024-05-01'),
(9, 45, '2024-05-01'),
(10, 12, '2024-05-01');

select * from Inventory;



--TASK-2 QURIES(SELECT, WHERE, BETWEEN, AND, LIKE)

--1. Retrieve names and emails of all customers
select C_Firstname, C_Lastname, C_Email 
From customer;

--2. List all orders with their order dates and corresponding customer names
select O.Order_id, O.Order_date, C.C_Firstname+ ' '+ C.C_Lastname as CustomerName
From Orders O
inner join customer C on O.Customer_id=C.customer_id;

--3. Insert a new customer record
INSERT INTO Customer(Customer_id, C_FirstName, C_LastName, C_Email, C_Phone, C_Address)
VALUES (11, 'Sanjay', 'D', 'sanjay.d@example.com', '9876500010', 'Madurai');

select * from customer;

--4. Update prices of all electronic gadgets by increasing them by 10%
UPDATE Products
SET P_price = P_price * 1.10
WHERE P_name IN ('Laptop', 'smartphone', 'Tablet', 'smartwatch', 'Headphones', 'Blutooth speaker' , 'Smart TV', 'Gaming console', 'Camera', 'Printer');

select * from products;

--5. Delete a specific order and its details using OrderID
DECLARE @Order_id INT = 8;  -- Replace with input

DELETE FROM OrderDetails WHERE Order_id = @Order_id;
DELETE FROM Orders WHERE Order_id = @Order_id;


select * from OrderDetails;
select * from orders;

--6. Insert a new order 
insert into orders(Customer_id,Order_date,Total_amt)
values(11,'2024-10-01',50000.00);

select * from orders;

--7. Update customer contact info using CustomerID
update customer 
set C_Address='New Address', C_phone='1234567899'
where Customer_id=1;

select * from customer;

--8.  Recalculate and update TotalAmount in Orders table
UPDATE O
SET O.Total_amt = (
    SELECT SUM(OD.Quantity * P.P_price)
    FROM OrderDetails OD
    JOIN Products P ON OD.P_id = P.P_id
    WHERE OD.Order_id = O.Order_id
)
FROM Orders O;

select * from orders;

--9.  Delete all orders and details for a specific customer
-- Delete OrderDetails first
DECLARE @customer_id INT=10; --replace with input customer_id
DELETE OD
FROM OrderDetails OD
JOIN Orders O ON OD.Order_id = O.Order_id
WHERE O.Customer_id = @customer_id;
-- Then delete Orders
DELETE FROM Orders
WHERE Customer_id = @customer_id;

select * from OrderDetails;
select * from Orders;

--10. Insert a new electronic gadget product
insert into products(P_id,P_name,P_description,P_price)
values(12,'Smart Speaker','Voice controlled smart speaker',12000.00);

select * from products;

--11.  Update order status
ALTER TABLE Orders ADD Status VARCHAR(20);

DECLARE @Order_id INT = 7;
DECLARE @NewStatus VARCHAR(20) = 'Pending';

UPDATE Orders
SET Status = @NewStatus
WHERE Order_id = @Order_id;

select * from orders;

--12. Calculate and update number of orders per customer
ALTER TABLE Customer ADD OrderCount INT;

-- Now update it
UPDATE C
SET C.OrderCount = (
    SELECT COUNT(*) FROM Orders O
    WHERE O.Customer_id = C.Customer_id
)
FROM Customer C;

select * from customer;