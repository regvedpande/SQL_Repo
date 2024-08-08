USE PeopleDB;

CALL Show_Table;

-- Using a function inside a Stored Procedure
CALL GetAllFullNames();

-- Using a function inside a Stored Procedure
CALL GetFullNameByID(5, @fullName);
SELECT @fullName;

-- Using a function inside a Stored Procedure
CALL GetFullNameByID(9, @fullName);
SELECT @fullName;

-- Using a function inside a Stored Procedure
CALL GetFullNameByID(11, @fullName);
SELECT @fullName;

-- Using a function inside a Stored Procedure
CALL GetFullNameByID(12, @fullName);
SELECT @fullName;
