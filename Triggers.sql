USE PeopleDB

CALL Show_Table;

ALTER TABLE People
ADD HourlyPay DECIMAL(10, 2),
ADD Salary DECIMAL(10, 2) DEFAULT NULL;


UPDATE People
SET HourlyPay = ROUND(RAND() * 50, 2);

UPDATE People
SET Salary = ROUND(RAND() * 90, 5);


CREATE TRIGGER before_hourly_pay_update
Before UPDATE ON people
FOR EACH ROW
SET New.Salary = (New.HourlyPay * 2080);


SHOW TRIGGERS;

UPDATE People
Set HourlyPay = 50
WHERE ID = 2;
Select * From People;

UPDATE People
Set HourlyPay = HourlyPay + 1;
Select * From People;

SET SQL_SAFE_UPDATES = 0;

UPDATE People
Set HourlyPay = HourlyPay + 5;
Select * From People;



-- ---------------------------------------------------------------------------------------------------------------

-- TRIGGER FOR INSERTING DATA

DELIMITER //

CREATE TRIGGER before_insert_people
BEFORE INSERT ON People
FOR EACH ROW 
BEGIN
    SET NEW.HourlyPay = ROUND(RAND() * 50, 2);
    SET NEW.Salary = ROUND(RAND() * 90, 5);
END //

DELIMITER ;

INSERT INTO People (FirstName, LastName, Age, Email)
VALUES ('Vigilante566', 'Vigilante', 73, 'Vigilante@me.com');





-- ----------------------------------------------------------------------------------------------------------

-- DELETE TRIGGER
DELIMITER //

CREATE TRIGGER after_delete_people
AFTER DELETE ON People
FOR EACH ROW
BEGIN

    INSERT INTO DeletedPeopleLog (ID, FirstName, LastName, Age, Email, DeletedAt)
    VALUES (OLD.ID, OLD.FirstName, OLD.LastName, OLD.Age, OLD.Email, NOW());
END//

DELIMITER ;

DELETE FROM People
WHERE ID = 27;

CALL Show_Table;