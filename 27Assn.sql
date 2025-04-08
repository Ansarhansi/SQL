create database Bus;
use Bus;
CREATE TABLE bmtc_details (bus_no INT,total_stops INT,source VARCHAR(30),dest VARCHAR(30),ticket_price INT,total_km INT,payment_type VARCHAR(10),schedule_time TIME,route_code VARCHAR(15),driver_name VARCHAR(50),conductor_name VARCHAR(50),is_ac_bus BOOLEAN,passenger_capacity INT
);
desc bmtc_details;
INSERT INTO bmtc_details(bus_no, total_stops, source, dest, ticket_price, total_km, payment_type, schedule_time, route_code, driver_name, conductor_name, is_ac_bus, passenger_capacity
)VALUES (1456, 12, 'BTM', 'Majestic', 28, 15, 'Upi', '12:5:8', '25A', 'Venky', 'Manoj', 'No', 80);
DROP TABLE bmtc_details;
CREATE TABLE bmtc_details (bus_no INT,total_stops INT,source VARCHAR(30),dest VARCHAR(30),ticket_price INT,total_km INT,payment_type VARCHAR(10),schedule_time TIME,route_code VARCHAR(15),driver_name VARCHAR(50),conductor_name VARCHAR(50),is_ac_bus BOOLEAN,passenger_capacity INT);

INSERT INTO bmtc_details(bus_no, total_stops, source, dest, ticket_price, total_km, payment_type, schedule_time, route_code, driver_name, conductor_name, is_ac_bus, passenger_capacity)
VALUES (1456, 12, 'BTM', 'Majestic', 28, 15, 'Upi', '12:05:08', '25A', 'Venky', 'Manoj', FALSE, 80);
INSERT INTO bmtc_details(bus_no, total_stops, source, dest, ticket_price, total_km, payment_type, schedule_time, route_code, driver_name, conductor_name, is_ac_bus, passenger_capacity)VALUES 
(1457, 10, 'Jayanagar', 'Majestic', 30, 12, 'Cash', '08:30:00', '26B', 'Rajesh', 'Suresh', FALSE, 60),
(1458, 15, 'Koramangala', 'Hebbal', 35, 18, 'UPI', '09:45:00', '15C', 'Harish', 'Vinod', TRUE, 50),
(1459, 8, 'Electronic City', 'Silk Board', 20, 10, 'Card', '07:15:00', '16D', 'Arun', 'Kumar', FALSE, 70),
(1460, 12, 'BTM', 'Yeshwanthpur', 40, 20, 'Cash', '06:50:00', '32A', 'Manju', 'Ajay', TRUE, 80),
(1461, 20, 'Banashankari', 'Majestic', 50, 25, 'UPI', '11:00:00', '45E', 'Ravi', 'Prasad', TRUE, 55),
(1462, 9, 'Kengeri', 'Majestic', 28, 15, 'Card', '07:30:00', '28G', 'Srinivas', 'Anil', FALSE, 65),
(1463, 14, 'JP Nagar', 'BTM Layout', 22, 14, 'Cash', '10:20:00', '12F', 'Vivek', 'Ganesh', FALSE, 75),
(1464, 11, 'Whitefield', 'KR Market', 45, 22, 'Card', '08:00:00', '18H', 'Ramesh', 'Naveen', TRUE, 40),
(1465, 16, 'Indiranagar', 'Majestic', 38, 19, 'UPI', '09:10:00', '24K', 'Nagaraj', 'Deepak', TRUE, 85),
(1466, 5, 'Bannerghatta', 'BTM Layout', 18, 8, 'Cash', '06:40:00', '09M', 'Chandra', 'Suraj', FALSE, 90);
INSERT INTO bmtc_details(bus_no, total_stops, source, dest, ticket_price, total_km, payment_type, schedule_time, route_code, driver_name, conductor_name, is_ac_bus, passenger_capacity)VALUES 
(1467, 13, 'RT Nagar', 'Majestic', 32, 16, 'UPI', '07:50:00', '21N', 'Vikas', 'Sanjay', TRUE, 70),
(1468, 7, 'Basavanagudi', 'BTM Layout', 25, 12, 'Cash', '09:25:00', '05P', 'Shankar', 'Mukesh', FALSE, 60),
(1469, 18, 'Electronic City', 'Hebbal', 45, 22, 'Card', '10:40:00', '17Q', 'Dinesh', 'Mahesh', TRUE, 55),
(1470, 6, 'BTM', 'Majestic', 28, 14, 'UPI', '11:15:00', '25R', 'Pratap', 'Sudeep', FALSE, 80),
(1471, 10, 'Indiranagar', 'KR Puram', 35, 17, 'Card', '08:10:00', '13S', 'Karthik', 'Rajan', TRUE, 50),
(1472, 9, 'Koramangala', 'Silk Board', 20, 9, 'Cash', '06:55:00', '06T', 'Suresh', 'Prem', FALSE, 75),
(1473, 11, 'Jayanagar', 'Banashankari', 30, 15, 'UPI', '10:50:00', '19U', 'Mohan', 'Rahul', FALSE, 65),
(1474, 14, 'Whitefield', 'Majestic', 50, 25, 'Card', '07:20:00', '27V', 'Aravind', 'Deepu', TRUE, 85),
(1475, 5, 'BTM Layout', 'Bannerghatta', 18, 8, 'UPI', '09:00:00', '04W', 'Nithin', 'Santosh', FALSE, 90);
select * from bmtc_details;

SELECT SUM(passenger_capacity) AS total_passengers FROM bmtc_details;
SELECT SUM(total_km) AS total_distance FROM bmtc_details;
SELECT AVG(ticket_price) AS average_ticket_price FROM bmtc_details;
SELECT MIN(passenger_capacity) AS minimum_capacity FROM bmtc_details;
SELECT MAX(passenger_capacity) AS maximum_capacity FROM bmtc_details;
SELECT COUNT(bus_no) AS total_buses FROM bmtc_details;

SELECT is_ac_bus, SUM(ticket_price) AS total_ticket_price FROM bmtc_details GROUP BY is_ac_bus;
SELECT payment_type, COUNT(bus_no) AS total_buses FROM bmtc_details GROUP BY payment_type;

SELECT route_code, SUM(passenger_capacity) AS total_capacity FROM bmtc_details GROUP BY route_code HAVING total_capacity > 500;
SELECT is_ac_bus, AVG(ticket_price) AS average_ticket_price FROM bmtc_details GROUP BY is_ac_bus HAVING average_ticket_price > 30;
