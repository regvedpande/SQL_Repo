CREATE DATABASE CustomerPayments;

USE CustomerPayments;


-- First Table
CREATE TABLE Payments (
    CustomerID INT PRIMARY KEY,
    Amount DECIMAL(10, 2),
    Mode VARCHAR(50),
    PaymentDate DATE
);

INSERT INTO Payments (CustomerID, Amount, Mode, PaymentDate)
VALUES
    (1, 1500.00, 'Credit Card', '2024-08-01'),
    (2, 2500.50, 'Debit Card', '2024-08-02'),
    (3, 1000.75, 'Cash', '2024-08-03'),
    (4, 3000.00, 'Bank Transfer', '2024-08-04'),
    (5, 500.25, 'UPI', '2024-08-05');


-- Second Table 
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    AddressID INT
);

INSERT INTO Customers (CustomerID, FirstName, LastName, AddressID)
VALUES
    (1, 'John', 'Doe', 101),
    (2, 'Jane', 'Smith', 102),
    (3, 'Michael', 'Johnson', 103),
    (4, 'Emily', 'Davis', 104),
    (5, 'David', 'Brown', 105);
    
    
