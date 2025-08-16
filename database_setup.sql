CREATE SCHEMA SQL_Activity_Lab;

USE SQL_Activity_Lab;

SHOW TABLES;

SELECT * FROM Subscribers;

CREATE TABLE Subscribers (
SubscriberID INT auto_increment PRIMARY KEY,
SubscriberName VARCHAR(100),
SubscriptionDate DATE
);

CREATE TABLE Shows (
ShowID INT auto_increment PRIMARY KEY,
Title VARCHAR(100),
Genre VARCHAR(50),
ReleaseYear INT
);

CREATE TABLE WatchHistory (
HistoryID INT PRIMARY KEY,
ShowID INT,
SubscriberID INT,
WatchTime INT, -- Duration in minutes
FOREIGN KEY (ShowID) REFERENCES Shows(ShowID),
FOREIGN KEY (SubscriberID) REFERENCES
Subscribers(SubscriberID)
);

INSERT INTO Shows (ShowID, Title, Genre, ReleaseYear) VALUES
(1, 'Stranger Things', 'Sci-Fi', 2016),
(2, 'The Crown', 'Drama', 2016),
(3, 'The Witcher', 'Fantasy', 2019),
(4, 'Breaking Bad', 'Crime', 2008),
(5, 'Game of Thrones', 'Fantasy', 2011),
(6, 'The Mandalorian', 'Sci-Fi', 2019),
(7, 'Better Call Saul', 'Crime', 2015),
(8, 'Money Heist', 'Thriller', 2017),
(9, 'Dark', 'Sci-Fi', 2017),
(10, 'The Office', 'Comedy', 2005),
(11, 'Friends', 'Comedy', 1994),
(12, 'Peaky Blinders', 'Crime', 2013),
(13, 'House of Cards', 'Drama', 2013),
(14, 'Ozark', 'Thriller', 2017),
(15, 'The Boys', 'Action', 2019),
(16, 'Narcos', 'Crime', 2015),
(17, 'Black Mirror', 'Sci-Fi', 2011),
(18, 'Westworld', 'Sci-Fi', 2016),
(19, 'Mindhunter', 'Thriller', 2017),
(20, 'Lupin', 'Mystery', 2021),
(21, 'Sherlock', 'Mystery', 2010),
(22, 'The Umbrella Academy', 'Sci-Fi', 2019),
(23, 'Chernobyl', 'Drama', 2019),
(24, 'The Last of Us', 'Drama', 2023),
(25, 'Severance', 'Thriller', 2022);

INSERT INTO Subscribers (SubscriberID, SubscriberName, SubscriptionDate) VALUES
(1, 'Emily Clark', '2023-01-10'),
(2, 'Chris Adams', '2023-02-15'),
(3, 'Jordan Smith', '2023-03-05'),
(4, 'Sophia Turner', '2023-01-25'),
(5, 'Liam Johnson', '2023-04-12'),
(6, 'Ava Martinez', '2023-05-03'),
(7, 'Noah Brown', '2023-02-20'),
(8, 'Olivia Davis', '2023-06-18'),
(9, 'Mason Wilson', '2023-03-27'),
(10, 'Isabella Moore', '2023-07-09'),
(11, 'James Taylor', '2023-08-14'),
(12, 'Mia Anderson', '2023-04-22'),
(13, 'Ethan Thomas', '2023-09-01'),
(14, 'Charlotte White', '2023-02-28'),
(15, 'Benjamin Harris', '2023-06-05'),
(16, 'Amelia Martin', '2023-01-30'),
(17, 'Lucas Thompson', '2023-03-15'),
(18, 'Harper Garcia', '2023-05-21'),
(19, 'Henry Martinez', '2023-07-01'),
(20, 'Ella Robinson', '2023-08-25'),
(21, 'Alexander Clark', '2023-09-12'),
(22, 'Evelyn Rodriguez', '2023-04-18'),
(23, 'Daniel Lewis', '2023-06-29'),
(24, 'Grace Walker', '2023-07-20'),
(25, 'Matthew Young', '2023-05-07'),
(26, 'Scarlett Hall', '2023-02-12'),
(27, 'David Allen', '2023-03-30'),
(28, 'Chloe King', '2023-01-14'),
(29, 'Michael Scott', '2023-08-08'),
(30, 'Victoria Wright', '2023-09-25'),
(31, 'Samuel Baker', '2023-02-06'),
(32, 'Penelope Hill', '2023-03-18'),
(33, 'Joseph Green', '2023-07-16'),
(34, 'Layla Adams', '2023-05-28'),
(35, 'Owen Carter', '2023-09-30');


INSERT INTO WatchHistory (HistoryID, SubscriberID, ShowID, WatchTime) VALUES
(1, 1, 1, 100),
(2, 1, 2, 10),
(3, 2, 1, 20),
(4, 2, 2, 40),
(5, 2, 3, 10),
(6, 3, 2, 10),
(7, 3, 1, 10),
(8, 4, 5, 55),
(9, 4, 8, 35),
(10, 5, 1, 120),
(11, 5, 9, 60),
(12, 6, 4, 45),
(13, 6, 7, 80),
(14, 7, 12, 95),
(15, 7, 20, 30),
(16, 8, 15, 150),
(17, 8, 21, 75),
(18, 9, 14, 60),
(19, 9, 3, 25),
(20, 10, 19, 90),
(21, 10, 1, 50),
(22, 11, 2, 35),
(23, 11, 6, 110),
(24, 12, 11, 40),
(25, 12, 5, 85),
(26, 13, 18, 95),
(27, 13, 9, 25),
(28, 14, 4, 100),
(29, 14, 10, 60),
(30, 15, 3, 20),
(31, 15, 13, 130),
(32, 16, 22, 90),
(33, 16, 24, 50),
(34, 17, 7, 120),
(35, 17, 8, 40),
(36, 18, 14, 75),
(37, 18, 25, 55),
(38, 19, 1, 65),
(39, 19, 16, 85),
(40, 20, 6, 150),
(41, 20, 12, 45),
(42, 21, 9, 25),
(43, 21, 15, 140),
(44, 22, 5, 95),
(45, 22, 18, 60),
(46, 23, 8, 80),
(47, 23, 4, 55),
(48, 24, 20, 110),
(49, 24, 2, 35),
(50, 25, 13, 100);



