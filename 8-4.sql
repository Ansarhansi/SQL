
CREATE TABLE student_info (student_id INT PRIMARY KEY,name VARCHAR(50),age INT,gender CHAR(1),college_id INT);

CREATE TABLE college_info (
    college_id INT PRIMARY KEY,
    college_name VARCHAR(100),
    location VARCHAR(100),
    ranking INT,
    total_students INT
);

INSERT INTO student_info VALUES 
(1, 'Alice', 20, 'F', 1), 
(2, 'Bob', 21, 'M', 1), 
(3, 'Charlie', 22, 'M', 2),
(4, 'Diana', 23, 'F', 2), 
(5, 'Eve', 24, 'F', 3), 
(6, 'Frank', 20, 'M', 3),
(7, 'Grace', 21, 'F', 1), 
(8, 'Hank', 22, 'M', 1), 
(9, 'Ivy', 23, 'F', 2),
(10, 'Jack', 24, 'M', 2),
(11, 'Kate', 20, 'F', 3), 
(12, 'Leo', 21, 'M', 3),
(13, 'Mona', 22, 'F', 1), 
(14, 'Nate', 23, 'M', 2), 
(15, 'Olivia', 24, 'F', 3);

INSERT INTO college_info VALUES 
(1, 'Tech University', 'City A', 5, 10000),
(2, 'Science Institute', 'City B', 8, 8000),
(3, 'Arts College', 'City C', 10, 5000),
(4, 'Business School', 'City D', 7, 7000),
(5, 'Medical Academy', 'City E', 6, 6000);


ALTER TABLE student_info ADD phone_number VARCHAR(15);

ALTER TABLE student_info RENAME COLUMN name TO student_name;
ALTER TABLE student_info RENAME COLUMN age TO student_age;
ALTER TABLE college_info RENAME COLUMN location TO college_location;


ALTER TABLE student_info MODIFY student_age SMALLINT;
ALTER TABLE college_info MODIFY ranking TINYINT;
ALTER TABLE college_info MODIFY total_students BIGINT;


UPDATE student_info SET phone_number = '1234567890' WHERE student_id <= 5;
UPDATE student_info SET phone_number = '0987654321' WHERE student_id > 5 AND student_id <= 10;
UPDATE student_info SET phone_number = '9876543210' WHERE student_id > 10 AND student_id <= 15;
UPDATE student_info SET phone_number = '5678901234' WHERE student_id % 2 = 0;
UPDATE student_info SET phone_number = '1122334455' WHERE student_id % 2 != 0;

DELETE FROM student_info WHERE student_id = 1;
DELETE FROM student_info WHERE student_age > 22;
DELETE FROM college_info WHERE ranking > 8;
DELETE FROM college_info WHERE total_students < 6000;


SELECT * FROM student_info WHERE student_age > 20 AND gender = 'F';
SELECT * FROM student_info WHERE gender = 'M' OR student_age < 22;


SELECT * FROM student_info WHERE college_id IN (1, 2);
SELECT * FROM college_info WHERE ranking NOT IN (5, 6);

SELECT * FROM student_info WHERE student_age BETWEEN 20 AND 22;
SELECT * FROM college_info WHERE ranking NOT BETWEEN 6 AND 8;

SELECT COUNT(*) AS Total_Students, AVG(student_age) AS Average_Age FROM student_info;
SELECT MAX(ranking) AS Top_Ranking, MIN(ranking) AS Lowest_Ranking FROM college_info;


SELECT s.student_name, c.college_name FROM student_info s
JOIN college_info c ON s.college_id = c.college_id;