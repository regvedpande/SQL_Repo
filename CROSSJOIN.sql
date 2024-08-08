CREATE DATABASE EventManagement;
USE EventManagement;

CREATE TABLE Participants (
    ParticipantID INT PRIMARY KEY,
    Name VARCHAR(50)
);

INSERT INTO Participants (ParticipantID, Name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie'),
(4, 'Diana'),
(5, 'Ethan');

CREATE TABLE Events (
    EventID INT PRIMARY KEY,
    EventName VARCHAR(50)
);

INSERT INTO Events (EventID, EventName) VALUES
(1, 'Workshop'),
(2, 'Seminar'),
(3, 'Webinar');

-- Cross Join Example One 
SELECT Participants.Name, Events.EventName From Participants
CROSS JOIN Events;

-- Cross Join Example Two
SELECT Participants.ParticipantID, Events.EventName
FROM Participants
CROSS JOIN Events
WHERE Participants.ParticipantID = Events.EventID;

-- Cross Join Example Three
SELECT P.Name, Events.EventName
FROM Participants P
CROSS JOIN Events;

-- Cross Join Example Four
SELECT Participants.Name, E.EventName
FROM Participants
CROSS JOIN Events E;

-- Cross Join Example Five
SELECT Participants.Name, Events.EventName
FROM Participants
CROSS JOIN Events
WHERE Events.EventID > 1;
