USE CustomerPayments;

SELECT * FROM Payments;

SELECT * FROM Customers;

WITH CustomerPaymentDetails AS (
    SELECT c.CustomerID, c.FirstName, c.LastName, p.Amount, p.Mode, p.PaymentDate
    FROM Customers c
    JOIN Payments p
    ON c.CustomerID = p.CustomerID
)

-- SELECT Amount, Mode
-- FROM CustomerPaymentDetails;

-- SELECT LastName, PaymentDate
-- FROM CustomerPaymentDetails;

SELECT FirstName, LastName, PaymentDate
FROM CustomerPaymentDetails
WHERE DAY(PaymentDate) = 04;
