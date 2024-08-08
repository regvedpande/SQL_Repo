CREATE DATABASE CANDIDATELIST
USE CANDIDATELIST

CREATE TABLE CANDIDATES_INFO1 (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Score INT
);

INSERT INTO CANDIDATES_INFO1 (ID, Name, Age, Score) VALUES
(1, 'Regved', 25, 85),
(2, 'Asha', 22, 90),
(3, 'Syush', 24, 88),
(4, 'Aditya', 23, 75),
(5, 'Ketan', 26, 80),
(6, 'Jitu', 27, 78),
(7, 'Sagar', 21, 95);
