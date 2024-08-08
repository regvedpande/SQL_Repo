USE PeopleDB;

CALL Show_Table;

-- Stored Procedure inside the function
CALL GetFormattedEmailByID(1, @Email);
SELECT @Email;

-- Stored Procedure inside the function
CALL GetFormattedEmailByID(3, @Email);
SELECT @Email;

-- Stored Procedure inside the function
CALL GetFormattedEmailByID(11, @Email);
SELECT @Email;

-- Stored Procedure inside the function
CALL GetFormattedEmailByID(5, @Email);
SELECT @Email;

-- Stored Procedure inside the function
CALL GetFormattedEmailByID(8, @Email);
SELECT @Email;
