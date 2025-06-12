use [Student management system];

CREATE TABLE Dept (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(100)
);

CREATE TABLE Teacher (
    TeacherID INT PRIMARY KEY,
    TeacherName VARCHAR(100),
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES Dept(DeptID)
);

CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    DeptID INT,
    TeacherID INT,
    FOREIGN KEY (DeptID) REFERENCES Dept(DeptID),
    FOREIGN KEY (TeacherID) REFERENCES Teacher(TeacherID)
);

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    SName VARCHAR(100),
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES Dept(DeptID)
);

INSERT INTO Dept (DeptID, DeptName) VALUES
(1, 'Computer Science'),
(2, 'Electronics'),
(3, 'Mechanical'),
(4, 'Civil');

INSERT INTO Teacher (TeacherID, TeacherName, DeptID) VALUES
(101, 'Dr. Rajesh Kumar', 1),
(102, 'Ms. Nithya Rao', 1),
(103, 'Mr. Arvind Sharma', 2),
(104, 'Mrs. Kavitha R.', 3),
(105, 'Dr. Joseph Thomas', 4);

INSERT INTO Course (CourseID, CourseName, DeptID, TeacherID) VALUES
(201, 'Data Structures', 1, 101),
(202, 'Digital Electronics', 2, 103),
(203, 'Thermodynamics', 3, 104),
(204, 'Structural Engineering', 4, 105),
(205, 'Operating Systems', 1, 102);

INSERT INTO Student (StudentID, SName, DeptID) VALUES
(301, 'Aakash M', 1),
(302, 'Bhuvana S', 1),
(303, 'Charan R', 2),
(304, 'Divya K', 3),
(305, 'Eshwar V', 4),
(306, 'Farhana A', 1);

select * from dept;
select * from teacher;
select * from course;
select * from student;

--Join
SELECT 
    S.StudentID,
    S.SName,
    D.DeptName
FROM Student S
JOIN Dept D ON S.DeptID = D.DeptID;

--Inner Join
SELECT 
    S.StudentID,
    S.SName,
    D.DeptName
FROM Student S
INNER JOIN Dept D ON S.DeptID = D.DeptID;

--Left Join
SELECT 
    S.StudentID,
    S.SName,
    D.DeptName
FROM Student S
LEFT JOIN Dept D ON S.DeptID = D.DeptID;

--Right Join
SELECT 
    S.StudentID,
    S.SName,
    D.DeptName
FROM Student S
RIGHT JOIN Dept D ON S.DeptID = D.DeptID;

--Full Outer Join
SELECT 
    S.StudentID,
    S.SName,
    D.DeptName
FROM Student S
FULL OUTER JOIN Dept D ON S.DeptID = D.DeptID;





