USE CustomerPayments;

SELECT * FROM Payments;

SELECT * FROM Customers;

SYSTEM mysqldump -u regvedpande -p CustomerPayments > D:\DatabasseBackup.sql;
