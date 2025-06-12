--sql functions concept

use sql_functions;

--create table student 
CREATE TABLE Student (
    S_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Marks INT,
    DOB DATE,
    Email VARCHAR(100),
    Address VARCHAR(255),
    AdmissionDate DATE,
    CourseName VARCHAR(50),
    DeptName VARCHAR(50),
    Fees DECIMAL(10,2)
);

--insert some data into student table
INSERT INTO Student VALUES 
(1, 'Aarthi', 85, '2002-05-10', 'aarthi@gmail.com', '  Chennai  ', '2023-06-01', 'Computer Science', 'Information Technology', 15000.756),
(2, 'Karthik', 90, '2001-12-15', 'karthik@yahoo.com', 'Bangalore', '2023-06-01', 'AI & DS', 'Computer Applications', 16000.237),
(3, 'Meena', 78, '2003-01-08', 'meena@outlook.com', 'Madurai', '2023-06-01', 'BCA', 'Computer Applications', 15500.5),
(4, 'Raj', 88, '2002-09-20', 'raj@gmail.com', '  Salem ', '2023-06-01', 'IT', 'IT', 16250.95),
(5, 'Divya', 92, '2001-11-10', 'divya@mail.com', 'Tirunelveli', '2023-06-01', 'Data Science', 'Applied Sciences', 17000.8),
(6, 'John', 70, '2002-03-25', 'john@domain.com', 'Erode', '2023-06-01', 'Commerce', 'Business Admin', 14200.45),
(7, 'Ravi', 83, '2002-10-18', 'ravi@yahoo.in', 'Coimbatore', '2023-06-01', 'Maths', 'Mathematics', 14750.65),
(8, 'Sneha', 75, '2003-02-19', 'sneha@gmail.com', 'Trichy', '2023-06-01', 'Physics', 'Science', 15800.25),
(9, 'Vikram', 88, '2002-08-30', 'vikram@live.com', 'Pondy', '2023-06-01', 'Zoology', 'Bio Sciences', 14999.99),
(10, 'Latha', 82, '2001-04-10', 'latha@domain.com', 'Vellore', '2023-06-01', 'Chemistry', 'Chemistry', 16500.10),
(11, 'Akash', 67, '2003-07-01', 'akash@mail.com', 'Nellore', '2023-06-01', 'IT', 'Information Technology', 13500.9),
(12, 'Pooja', 91, '2002-06-21', 'pooja@edu.com', 'Kochi', '2023-06-01', 'EEE', 'Engineering', 17250.25),
(13, 'Gokul', 89, '2001-10-17', 'gokul@yahoo.com', 'Mumbai', '2023-06-01', 'CSE', 'Information Technology', 15999.60),
(14, 'Harini', 95, '2003-12-05', 'harini@gmail.com', 'Noida', '2023-06-01', 'BBA', 'Business Admin', 16100.20),
(15, 'Kavi', 73, '2001-09-09', 'kavi@edu.in', 'Hyderabad', '2023-06-01', 'Bio Tech', 'Bio Sciences', 14400.45),
(16, 'Vignesh', 86, '2002-11-29', 'vignesh@mail.com', 'Pune', '2023-06-01', 'MECH', 'Engineering', 13800.89),
(17, 'Swetha', 87, '2002-07-18', 'swetha@gmail.com', 'Bhopal', '2023-06-01', 'CIVIL', 'Engineering', 13450.50),
(18, 'Teena', 84, '2003-03-13', 'teena@live.com', 'Delhi', '2023-06-01', 'BCom', 'Commerce', 13330.30),
(19, 'Yogesh', 93, '2002-01-25', 'yogesh@domain.in', '  Tirupur  ', '2023-06-01', 'MCA', 'Computer Applications', 17650.70),
(20, 'Riya', 88, '2001-02-20', 'riya@edu.com', 'Nagercoil', '2023-06-01', 'ECE', 'Engineering', 16850.90);

--1. Convert all student names to UPPERCASE
SELECT UPPER(Name) AS UpperName FROM Student;

--2. Find length of each student name
SELECT Name, LEN(Name) AS NameLength FROM Student;

--3. Extract first 3 characters from CourseName
SELECT CourseName, SUBSTRING(CourseName, 1, 3) AS CourseCode FROM Student;

--4. Replace all 'a' with 'x' in DeptName
SELECT DeptName, REPLACE(DeptName, 'a', 'x') AS ModifiedDept FROM Student;

--5. Concatenate first and last name of a teacher
SELECT CONCAT(Name, ' ', 'Kumar') AS FullName FROM Student;

--6. Find position of '@' in student email
SELECT Email, CHARINDEX('@', Email) AS AtPosition FROM Student;

--7. Remove leading and trailing spaces from Address
SELECT Address, LTRIM(RTRIM(Address)) AS TrimmedAddress FROM Student;

--8. Show absolute marks of students
SELECT Name, ABS(Marks) AS AbsMarks FROM Student;

--9. Round the fees to 2 decimal places
SELECT Name, ROUND(Fees, 2) AS RoundedFees FROM Student;

--10.  Display today's date and time
SELECT GETDATE() AS CurrentDateTime;

--11. Add 30 days to AdmissionDate
SELECT Name, AdmissionDate, DATEADD(DAY, 30, AdmissionDate) AS After30Days FROM Student;

--12. Calculate number of days enrolled
SELECT Name, DATEDIFF(DAY, AdmissionDate, GETDATE()) AS DaysEnrolled FROM Student;

--13. Show month name of the AdmissionDate
SELECT Name, DATENAME(MONTH, AdmissionDate) AS JoinMonth FROM Student;











