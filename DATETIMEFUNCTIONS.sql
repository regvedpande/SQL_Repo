USE PeopleDB

CALL Show_Table;

-- CURRENTTIMESTAMP FUNCTION
CALL InsertDataWithTimestamp('Black', 'Noir', 50, 'black.noir@example.com');


-- DATEADD FUNCTION
ALTER TABLE People
ADD JoinDate DATETIME;

CALL UpdateJoinDates();

-- DATEDIFF FUNCTION
CALL ShowYearDifference('2011-08-25', '2017-08-25');

-- DATEFROMPARTS FUNCTION
CALL ShowYear('2017-08-25');

-- DATENAME FUNCTION
CALL ShowYearName('2017-08-25');

-- GETDATE FUNCTION --> NOW()
CALL ShowCurrentYear;

-- SHOW SYSTEM DATETIME
CALL ShowSysDateTime;

-- SHOW YEAR
CALL ShowYearFromDate('2017-08-25');