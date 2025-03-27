create database Cricket_info;
use Cricket_info;
create table Cricket_info(Player_ID int,Player_Name varchar(20),Team_Name varchar(20),Opponent_Team varchar(20),venue varchar(20),Format varchar(20),no_of_fours int,no_of_sixes int,Role varchar(30),Runs_Scored int ,Match_Date date);
select * from Cricket_info;
insert into Cricket_info values(1,'MS Dhoni','CSK','RCB','Chepauk','IPL',25,7,'(WK/Batsman)',83,'2025-07-07');
select * from Cricket_info;
INSERT INTO Cricket_info VALUES
(2, 'Virat Kohli', 'RCB', 'CSK', 'Chinnaswamy', 'T20', 12, 3, 'Batsman', 67, '2025-05-01'),
(3, 'Joe Root', 'England', 'Australia', 'Lord’s', 'Test', 8, 0, 'Batsman', 156, '2024-08-15'),
(4, 'Mitchell Starc', 'Australia', 'India', 'MCG', 'ODI', 0, 0, 'Bowler', 15, '2024-06-10'),
(5, 'Rohit Sharma', 'India', 'Pakistan', 'Wankhede', 'ODI', 20, 8, 'Batsman', 140, '2025-03-18'),
(6, 'AB de Villiers', 'South Africa', 'India', 'Wanderers', 'T20', 15, 10, '(WK/Batsman)', 89, '2025-02-22'),
(7, 'Ben Stokes', 'England', 'New Zealand', 'Headingley', 'Test', 5, 2, 'All-rounder', 92, '2024-07-07'),
(8, 'Jasprit Bumrah', 'India', 'South Africa', 'Cape Town', 'ODI', 0, 0, 'Bowler', 10, '2025-01-05'),
(9, 'Kane Williamson', 'New Zealand', 'Australia', 'Auckland', 'Test', 12, 1, 'Batsman', 145, '2024-11-21'),
(10, 'David Warner', 'Australia', 'England', 'SCG', 'T20', 18, 5, 'Batsman', 70, '2025-03-27'),
(11, 'Shakib Al Hasan', 'Bangladesh', 'Sri Lanka', 'Dhaka', 'ODI', 10, 2, 'All-rounder', 60, '2024-09-30'),
(12, 'Chris Gayle', 'West Indies', 'India', 'Sabina Park', 'T20', 14, 12, 'Batsman', 110, '2025-06-15'),
(13, 'Babar Azam', 'Pakistan', 'Afghanistan', 'Sharjah', 'T20', 9, 3, 'Batsman', 85, '2025-04-09'),
(14, 'Steve Smith', 'Australia', 'India', 'Adelaide', 'Test', 7, 0, 'Batsman', 132, '2024-12-25'),
(15, 'Mohammad Rizwan', 'Pakistan', 'New Zealand', 'Karachi', 'ODI', 10, 4, '(WK/Batsman)', 75, '2024-10-10');
create database Footabll_info;
use Footabll_info
Create TABLE Football_info ( Player_ID INT,Player_Name VARCHAR(30),Team_Name VARCHAR(30),Match_ID INT,Match_Date DATE,Opponent_Team VARCHAR(30),Venue VARCHAR(30),League_Name VARCHAR(30),Goals_Scored INT,Assists INT,Position VARCHAR(30)
);
select * from Football_info;
INSERT INTO Football_info VALUES(1, 'Sunil Chhetri', 'Bengaluru FC', 1001, '2025-03-25', 'ATK Mohun Bagan', 'Sree Kanteerava', 'Indian Super League', 2, 1, 'Forward');
INSERT INTO Football_info VALUES(2, 'Lionel Messi', 'Paris Saint-Germain', 1002, '2025-03-26', 'Real Madrid', 'Parc des Princes', 'UEFA Champions League', 3, 2, 'Forward'),
(3, 'Cristiano Ronaldo', 'Al-Nassr', 1003, '2025-03-27', 'Al-Hilal', 'King Fahd Stadium', 'Saudi Pro League', 1, 0, 'Forward'),
(4, 'Neymar Jr', 'Paris Saint-Germain', 1004, '2025-03-28', 'Manchester United', 'Old Trafford', 'UEFA Champions League', 1, 1, 'Forward'),
(5, 'Harry Kane', 'Bayern Munich', 1005, '2025-03-29', 'Borussia Dortmund', 'Allianz Arena', 'Bundesliga', 2, 1, 'Forward'),
(6, 'Virgil van Dijk', 'Liverpool', 1006, '2025-03-30', 'Chelsea', 'Anfield', 'Premier League', 0, 0, 'Defender'),
(7, 'Kevin De Bruyne', 'Manchester City', 1007, '2025-03-31', 'Arsenal', 'Etihad Stadium', 'Premier League', 0, 3, 'Midfielder'),
(8, 'Mohamed Salah', 'Liverpool', 1008, '2025-04-01', 'Manchester United', 'Anfield', 'Premier League', 2, 1, 'Forward'),
(9, 'Kylian Mbappé', 'Paris Saint-Germain', 1009, '2025-04-02', 'Bayern Munich', 'Parc des Princes', 'UEFA Champions League', 3, 0, 'Forward'),
(10, 'Sergio Ramos', 'Sevilla', 1010, '2025-04-03', 'Barcelona', 'Ramon Sanchez-Pizjuan', 'La Liga', 0, 0, 'Defender'),
(11, 'Luka Modric', 'Real Madrid', 1011, '2025-04-04', 'Atletico Madrid', 'Santiago Bernabeu', 'La Liga', 1, 2, 'Midfielder'),
(12, 'Robert Lewandowski', 'Barcelona', 1012, '2025-04-05', 'Real Madrid', 'Camp Nou', 'La Liga', 2, 0, 'Forward'),
(13, 'Erling Haaland', 'Manchester City', 1013, '2025-04-06', 'Chelsea', 'Etihad Stadium', 'Premier League', 3, 1, 'Forward'),
(14, 'Marcus Rashford', 'Manchester United', 1014, '2025-04-07', 'Liverpool', 'Old Trafford', 'Premier League', 1, 1, 'Forward'),
(15, 'Son Heung-min', 'Tottenham Hotspur', 1015, '2025-04-08', 'Arsenal', 'Tottenham Hotspur Stadium', 'Premier League', 2, 2, 'Forward');


ALTER TABLE Football_info ADD COLUMN Yellow_Cards INT;
ALTER TABLE Football_info RENAME COLUMN Player_Name TO Full_Name;
ALTER TABLE Football_info RENAME COLUMN Team_Name TO Club;
ALTER TABLE Football_info RENAME COLUMN Goals_Scored TO Total_Goals;
select * from Football_info;

select * from Football_info  where official_language='French' or continent='Europe';

