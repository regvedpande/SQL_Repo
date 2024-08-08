CREATE DATABASE IF NOT EXISTS StudentRecords;

USE StudentRecords;

CREATE TABLE IF NOT EXISTS Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Age INT,
    Email VARCHAR(100),
    PhoneNumber VARCHAR(15)
);


INSERT INTO Students (StudentID, FirstName, LastName, DateOfBirth, Age, Email, PhoneNumber)
VALUES
    (1, 'Alice', 'Johnson', '2000-01-15', 24, 'alice.johnson@example.com', '123-456-7890'),
    (2, 'Bob', 'Smith', '1999-02-20', 25, 'bob.smith@example.com', '234-567-8901'),
    (3, 'Carol', 'Taylor', '2001-03-25', 23, 'carol.taylor@example.com', '345-678-9012'),
    (4, 'David', 'Brown', '2000-04-30', 24, 'david.brown@example.com', '456-789-0123'),
    (5, 'Eve', 'Davis', '1998-05-05', 26, 'eve.davis@example.com', '567-890-1234');


CREATE TABLE IF NOT EXISTS Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    Instructor VARCHAR(50),
    Credits INT,
    Department VARCHAR(50)
);


INSERT INTO Courses (CourseID, CourseName, Instructor, Credits, Department)
VALUES
    (101, 'Mathematics', 'Dr. Alan Turing', 4, 'Science'),
    (102, 'Physics', 'Dr. Marie Curie', 3, 'Science'),
    (103, 'Chemistry', 'Dr. Linus Pauling', 4, 'Science'),
    (104, 'Biology', 'Dr. Charles Darwin', 3, 'Science'),
    (105, 'Computer Science', 'Dr. Ada Lovelace', 4, 'Engineering');

CREATE TABLE IF NOT EXISTS Enrollments (
    EnrollmentID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    Grade CHAR(2),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

INSERT INTO Enrollments (StudentID, CourseID, EnrollmentDate, Grade)
VALUES
    (1, 101, '2023-09-01', 'A'),
    (2, 102, '2023-09-02', 'B'),
    (3, 103, '2023-09-03', 'A'),
    (4, 104, '2023-09-04', 'C'),
    (5, 105, '2023-09-05', 'B'),
    (1, 102, '2023-09-06', 'A'),
    (2, 103, '2023-09-07', 'B'),
    (3, 104, '2023-09-08', 'A'),
    (4, 105, '2023-09-09', 'C'),
    (5, 101, '2023-09-10', 'B');
