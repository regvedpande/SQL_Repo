CREATE DATABASE PeopleDB;
USE PeopleDB;

CREATE TABLE People (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Email VARCHAR(100)
);

INSERT INTO People (FirstName, LastName, Age, Email)
VALUES 
('John', 'Doe', 30, 'john.doe@example.com'),
('Jane', 'Smith', 25, 'jane.smith@example.com'),
('Michael', 'Johnson', 35, 'michael.johnson@example.com'),
('Emily', 'Davis', 28, 'emily.davis@example.com'),
('David', 'Brown', 40, 'david.brown@example.com'),
('Sarah', 'Wilson', 22, 'sarah.wilson@example.com');

CALL Show_Table;

CALL Insertdata('Narendra', 'Modi', 73, 'narendramodi@india.com');
CALL Insertdata('Amit', 'Shah', 59, 'amitshah@india.com');
CALL Insertdata('Sonia', 'Gandhi', 77, 'soniagandhi@india.com');
CALL Insertdata('Rahul', 'Gandhi', 53, 'rahulgandhi@india.com');
CALL Insertdata('Arvind', 'Kejriwal', 55, 'arvindkejriwal@india.com');


