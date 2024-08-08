USE CustomerPayments;

SELECT * FROM Payments;

SELECT * FROM Customers;

CREATE VIEW ListOfPayments AS
SELECT c.FirstName, c.LastName, p.Amount, p.Mode, p.PaymentDate
FROM Customers c
JOIN Payments p
ON c.CustomerID = p.CustomerID;

SELECT FirstName, LastName, Amount, Mode, PaymentDate
FROM ListOfPayments
WHERE DAY(PaymentDate) = 3;

SELECT FirstName, LastName, Amount, Mode, PaymentDate
FROM ListOfPayments
WHERE Amount > 1000 AND Amount < 2000;