use university;
create table students(
 ID INT PRIMARY KEY,
 NAME VARCHAR(100),
 AGE INT,
 GENDER VARCHAR(1),
 CITY INT,
 COURSES INT);
 
 INSERT INTO students(ID, NAME, AGE, GENDER, CITY, COURSES)
 VALUES(1, "Ram Kumar", 19, "M", 1, 1),
       (2, "Sarita Kumari", 22, "F", 2, 2),
       (3, "Salman Khan", 20, "M", 1, 1),
       (4, "Juhi Chawla", 18, "F", 3, 3),
       (5, "Anil Kapoor", 22, "M", 1, 3),
       (6, "John Abraham", 21, "M", 2, 2),
       (7, "Shahid Kapoor", 20, "M", 1, 1);
       
create table cities(
cid INT NOT NULL,
cityname VARCHAR(50));

INSERT INTO cities(cid, cityname)
VALUES (1, "Agra"),
       (2, "Delhi"),
       (3, "Bhopal"),
       (4, "Noida"),
       (5, "Noida");
       
create table teachers(
   id INT PRIMARY KEY,
   name VARCHAR(50),
   age INT,
   gender VARCHAR(1),
   city INT,
   course INT);
   
INSERT INTO teachers(id, name, age, gender, city, course)
VALUES(1, "Raj Kapoor", 37, "M", 1, 2),
      (2, "Sadhna", 39, "F", 4, 3),
      (3, "Ram Kumar", 38, "M", 2, 1),
      (4, "Salim Khan", 45, "M", 3, 2),
      (5, "Nagma", 42, "F", 2, 1);
      
#UNION
 
SELECT * from students UNION SELECT * from teachers;

SELECT name from students UNION SELECT name from teachers;

SELECT name from students UNION ALL SELECT name from teachers;

SELECT name from students WHERE gender= "M" UNION ALL SELECT name from teachers WHERE gender = "M";

SELECT name from students WHERE city = 2 UNION ALL SELECT name from teachers WHERE city = 2; 