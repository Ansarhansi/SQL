CREATE TABLE  classroom_details(benches int, name Varchar(20), Camera boolean,cno int ,c_teacher Varchar(20));
CREATE TABLE  Classroom_present(presentation boolean ,price int,items Varchar(20),fans boolean,ctype varchar(10));
desc classroom_details;
insert into classroom_details values (20,'baoard',true,4,'amulya');
select * from classroom_details; 
create database Assignment;
use  Assignment;
CREATE TABLE state_info (
    state_name VARCHAR(100),
    country_name VARCHAR(100),
    population INT,
    capital VARCHAR(100),
    area_sq_km INT
    );
INSERT INTO state_info (state_name, country_name, population, capital, area_sq_km) VALUES
('Uttar Pradesh', 'India', 204200000, 'Lucknow', 243290),
('Maharashtra', 'India', 112374333, 'Mumbai', 307713),
('Bihar', 'India', 104099452, 'Patna', 94163),
('West Bengal', 'India', 91276115, 'Kolkata', 88752),
('Madhya Pradesh', 'India', 72626809, 'Bhopal', 308252),
('Tamil Nadu', 'India', 72147030, 'Chennai', 130058),
('Rajasthan', 'India', 68548437, 'Jaipur', 342239),
('Karnataka', 'India', 61095297, 'Bengaluru', 191791),
('Gujarat', 'India', 60439692, 'Gandhinagar', 196024),
('Andhra Pradesh', 'India', 49577103, 'Amaravati', 162975),
('Telangana', 'India', 35193978, 'Hyderabad', 112077),
('Odisha', 'India', 41974218, 'Bhubaneswar', 155707),
('Kerala', 'India', 33406061, 'Thiruvananthapuram', 38863),
('Jharkhand', 'India', 32988134, 'Ranchi', 79714),
('Assam', 'India', 31205576, 'Dispur', 78438);

select * from state_info;
CREATE TABLE hospital_info (
    hospital_name VARCHAR(255),
    state_name VARCHAR(100),
    city VARCHAR(100),
    beds INT,
    specialization VARCHAR(255),
    established_year INT
);
INSERT INTO hospital_info (hospital_name, state_name, city, beds, specialization, established_year) VALUES
('King George\'s Medical University', 'Uttar Pradesh', 'Lucknow', 4500, 'Multi-speciality', 1911),
('All India Institute of Medical Sciences (AIIMS) Delhi', 'Delhi', 'New Delhi', 2478, 'Multi-speciality', 1956),
('Christian Medical College', 'Tamil Nadu', 'Vellore', 2795, 'Multi-speciality', 1900),
('Postgraduate Institute of Medical Education and Research (PGIMER)', 'Chandigarh', 'Chandigarh', 1850, 'Multi-speciality', 1962),
('Apollo Hospitals Chennai', 'Tamil Nadu', 'Chennai', 1250, 'Multi-speciality', 1983),
('Tata Memorial Hospital', 'Maharashtra', 'Mumbai', 700, 'Cancer', 1941),
('Narayana Institute of Cardiac Sciences', 'Karnataka', 'Bengaluru', 1000, 'Cardiology', 2000),
('Fortis Memorial Research Institute', 'Haryana', 'Gurugram', 1000, 'Multi-speciality', 2009),
('Medanta - The Medicity', 'Haryana', 'Gurugram', 1250, 'Multi-speciality', 2009),
('Sanjay Gandhi Postgraduate Institute of Medical Sciences (SGPGIMS)', 'Uttar Pradesh', 'Lucknow', 1100, 'Multi-speciality', 1983),
('All India Institute of Medical Sciences (AIIMS) Bhubaneswar', 'Odisha', 'Bhubaneswar', 750, 'Multi-speciality', 2012),
('Bangalore Baptist Hospital', 'Karnataka', 'Bengaluru', 340, 'Multi-speciality', 1973),
('Amrita Institute of Medical Sciences', 'Kerala', 'Kochi', 1300, 'Multi-speciality', 1998),
('Rajendra Institute of Medical Sciences (RIMS)', 'Jharkhand', 'Ranchi', 1500, 'Multi-speciality', 1960),
('Guwahati Medical College and Hospital', 'Assam', 'Guwahati', 1500, 'Multi-speciality', 1968);
select * from hospital_info;
CREATE TABLE country_info (
    country_name VARCHAR(100),
    continent VARCHAR(50),
    population BIGINT,
    currency VARCHAR(10),
    official_language VARCHAR(100)
);
use assignment;
INSERT INTO country_info (country_name, continent, population, currency, official_language) VALUES
('India', 'Asia', 1393409038, 'INR', 'Hindi, English'),
('United States', 'North America', 331002651, 'USD', 'English'),
('China', 'Asia', 1444216107, 'CNY', 'Mandarin Chinese'),
('Brazil', 'South America', 212559417, 'BRL', 'Portuguese'),
('Russia', 'Europe/Asia', 145912025, 'RUB', 'Russian'),
('Japan', 'Asia', 126030000, 'JPY', 'Japanese'),
('Germany', 'Europe', 83240525, 'EUR', 'German'),
('United Kingdom', 'Europe', 67215293, 'GBP', 'English'),
('France', 'Europe', 67064000, 'EUR', 'French'),
('Canada', 'North America', 38005238, 'CAD', 'English, French'),
('Australia', 'Oceania', 25499884, 'AUD', 'English'),
('Italy', 'Europe', 60461826, 'EUR', 'Italian'),
('Mexico', 'North America', 128932753, 'MXN', 'Spanish'),
('South Korea', 'Asia', 51780000, 'KRW', 'Korean'),
('Indonesia', 'Asia', 273523615, 'IDR', 'Indonesian');
select * from country_info  where continent='Asia';
select country_name   from  country_info;
select * from country_info  where official_language='French' or continent='Europe';
select * from hospital_info where state_name='Karnataka';
select * from country_info  where (official_language='English' and continent='North America') or currency='inr';

ALTER TABLE hospital_info ADD id INT
INSERT INTO hospital_info (id, hospital_name, state_name, city, beds, specialization, established_year) VALUES
(1, 'King George\'s Medical University', 'Uttar Pradesh', 'Lucknow', 4500, 'Multi-speciality', 1911),
(2, 'All India Institute of Medical Sciences (AIIMS) Delhi', 'Delhi', 'New Delhi', 2478, 'Multi-speciality', 1956),
(3, 'Christian Medical College', 'Tamil Nadu', 'Vellore', 2795, 'Multi-speciality', 1900),
(4, 'Postgraduate Institute of Medical Education and Research (PGIMER)', 'Chandigarh', 'Chandigarh', 1850, 'Multi-speciality', 1962),
(5, 'Apollo Hospitals Chennai', 'Tamil Nadu', 'Chennai', 1250, 'Multi-speciality', 1983),
(6, 'Tata Memorial Hospital', 'Maharashtra', 'Mumbai', 700, 'Cancer', 1941),
(7, 'Narayana Institute of Cardiac Sciences', 'Karnataka', 'Bengaluru', 1000, 'Cardiology', 2000),
(8, 'Fortis Memorial Research Institute', 'Haryana', 'Gurugram', 1000, 'Multi-speciality', 2009),
(9, 'Medanta - The Medicity', 'Haryana', 'Gurugram', 1250, 'Multi-speciality', 2009),
(10, 'Sanjay Gandhi Postgraduate Institute of Medical Sciences (SGPGIMS)', 'Uttar Pradesh', 'Lucknow', 1100, 'Multi-speciality', 1983),
(11, 'All India Institute of Medical Sciences (AIIMS) Bhubaneswar', 'Odisha', 'Bhubaneswar', 750, 'Multi-speciality', 2012),
(12, 'Bangalore Baptist Hospital', 'Karnataka', 'Bengaluru', 340, 'Multi-speciality', 1973),
(13, 'Amrita Institute of Medical Sciences', 'Kerala', 'Kochi', 1300, 'Multi-speciality', 1998),
(14, 'Rajendra Institute of Medical Sciences (RIMS)', 'Jharkhand', 'Ranchi', 1500, 'Multi-speciality', 1960),
(15, 'Guwahati Medical College and Hospital', 'Assam', 'Guwahati', 1500, 'Multi-speciality', 1968);

ALTER TABLE state_info ADD id INT
INSERT INTO state_info (id, state_name, country_name, population, capital, area_sq_km) VALUES
(1, 'Uttar Pradesh', 'India', 204200000, 'Lucknow', 243290),
(2, 'Maharashtra', 'India', 112374333, 'Mumbai', 307713),
(3, 'Bihar', 'India', 104099452, 'Patna', 94163),
(4, 'West Bengal', 'India', 91276115, 'Kolkata', 88752),
(5, 'Madhya Pradesh', 'India', 72626809, 'Bhopal', 308252),
(6, 'Tamil Nadu', 'India', 72147030, 'Chennai', 130058),
(7, 'Rajasthan', 'India', 68548437, 'Jaipur', 342239),
(8, 'Karnataka', 'India', 61095297, 'Bengaluru', 191791),
(9, 'Gujarat', 'India', 60439692, 'Gandhinagar', 196024),
(10, 'Andhra Pradesh', 'India', 49577103, 'Amaravati', 162975),
(11, 'Telangana', 'India', 35193978, 'Hyderabad', 112077),
(12, 'Odisha', 'India', 41974218, 'Bhubaneswar', 155707),
(13, 'Kerala', 'India', 33406061, 'Thiruvananthapuram', 38863),
(14, 'Jharkhand', 'India', 32988134, 'Ranchi', 79714),
(15, 'Assam', 'India', 31205576, 'Dispur', 78438);
ALTER TABLE country_info ADD id INT
INSERT INTO country_info (id, country_name, continent, population, currency, official_language) VALUES
(1, 'India', 'Asia', 1393409038, 'INR', 'Hindi, English'),
(2, 'United States', 'North America', 331002651, 'USD', 'English'),
(3, 'China', 'Asia', 1444216107, 'CNY', 'Mandarin Chinese'),
(4, 'Brazil', 'South America', 212559417, 'BRL', 'Portuguese'),
(5, 'Russia', 'Europe/Asia', 145912025, 'RUB', 'Russian'),
(6, 'Japan', 'Asia', 126030000, 'JPY', 'Japanese'),
(7, 'Germany', 'Europe', 83240525, 'EUR', 'German'),
(8, 'United Kingdom', 'Europe', 67215293, 'GBP', 'English'),
(9, 'France', 'Europe', 67064000, 'EUR', 'French'),
(10, 'Canada', 'North America', 38005238, 'CAD', 'English, French'),
(11, 'Australia', 'Oceania', 25499884, 'AUD', 'English'),
(12, 'Italy', 'Europe', 60461826, 'EUR', 'Italian'),
(13, 'Mexico', 'North America', 128932753, 'MXN', 'Spanish'),
(14, 'South Korea', 'Asia', 51780000, 'KRW', 'Korean'),
(15, 'Indonesia', 'Asia', 273523615, 'IDR', 'Indonesian');
select * from country_info
select * from state_info
select * from hospital_info

alter table state_info add column revenue int;
insert into  state_info (revenue) value(2000);
update state_info set  revenue=2000 where id=1;




