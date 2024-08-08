
INSERT INTO INFO VALUES
(01, 'Regved', 'Software Engineer', 10000.00, '9049874883', 23),
(02, 'Alice', 'Data Scientist', 12000.00, '9123456789', '34'),
(03, 'Bob', 'Project Manager', 15000.00, '9234567890', '45'),
(04, 'Charlie', 'DevOps Engineer', 11000.00, '9345678901', '56'),
(05, 'David', 'UX Designer', 9000.00, '9456789012', '67');

INSERT INTO INFO (EMPID, EMPNAME, EMPJOB, EMPSALARY, EMPPHONE, DEPTID) VALUES
(021, 'Ayush','Architect', 30000.00, '98988758748', '44' );

select * from APPLEMPLOYEES.dbo.INFO;
select EMPNAME, EMPJOB from APPLEMPLOYEES.dbo.INFO;

UPDATE INFO SET EMPNAME = 'Rook'
WHERE EMPNAME = 'Bob';

select * from APPLEMPLOYEES.dbo.INFO;


DELETE FROM INFO
WHERE EMPID = 21;

select * from APPLEMPLOYEES.dbo.INFO;