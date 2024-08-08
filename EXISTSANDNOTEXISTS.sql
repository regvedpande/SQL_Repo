CREATE DATABASE TestDB;
USE TestDB;


CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Customers (CustomerID, CustomerName) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie');

INSERT INTO Orders (OrderID, CustomerID, OrderDate) VALUES
(101, 1, '2024-07-01'),
(102, 1, '2024-07-15'),
(103, 2, '2024-07-20');


SELECT CustomerName
FROM Customers c
WHERE EXISTS (
    SELECT 1
    FROM Orders o
    WHERE o.CustomerID = c.CustomerID
);


SELECT CustomerName
FROM Customers c
WHERE NOT EXISTS (
    SELECT 1
    FROM Orders o
    WHERE o.CustomerID = c.CustomerID
);

-- SELECT * FROM Customers  WHERE EXISTS
-- (SELECT * FROM ORDERS WHERE Customers.CustomerID = Orders.CustomerID)

SELECT * FROM Customers  WHERE NOT EXISTS
(SELECT * FROM ORDERS WHERE Customers.CustomerID = Orders.CustomerID)
