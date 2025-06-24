use university;
create table personals(
  id INT,
  name VARCHAR(20),
  age INT,
  gender VARCHAR(1),
  city INT,
  courses INT
  );
  
  INSERT INTO personalS(id, name, age, gender, city, courses) 
  values(1, "Ram Kumar", 19, "M", 1, 1),
		(2, "Sarita Kumari", 22, "F", 2, 2),
        (3, "Salman Khan", 20, "M", 1, 1),
        (4, "Juhi Chawla", 18, "F", 3, 3),
        (5 ,"Anil Kapoor", 22 , "M", 1, 3),
        (6, "John Abraham", 21, "M", 2, 2),
        (7, "Shahid Kapoor", 20, "M", 1, 1);
        
        
        
create table city(
 CID INT,
 CITYNAME VARCHAR(50));
 
 INSERT INTO city(CID, CITYNAME) 
 values(1, "Agra"),
	   (2, "Delhi"),
       (3, "Bhopal"),
       (4, "Jaipur"),
       (5, "Noida");
       
       
       
create table courses(
 course_id INT,
 course_name VARCHAR(20));
 
 INSERT INTO courses(course_id, course_name) 
 VALUES(1, "Btech"),
       (2, "BCA"),
       (3, "MBA");
       
       
#JOINS

SELECT * from personals INNER JOIN city ON personals.city=city.cid;

#USING ALIASES
SELECT * from personals p INNER JOIN city c ON p.city=c.cid;

SELECT p.id, p.name, p.age, p.gender, c.cityname from personals p INNER JOIN city c ON p.city=c.cid;

SELECT p.id, p.name, p.age, p.gender, c.cityname from personals p INNER JOIN city c ON p.city=c.cid WHERE c.cityname = "Agra" OR c.cityname = "Delhi" ORDER BY p.name;


SELECT p.id, p.name, p.age, p.gender, p.city, c.cityname from personals p LEFT JOIN city c ON p.city=c.cid WHERE gender = "M" ORDER BY name;
	
SELECT p.id, p.name, p.age, p.gender, p.city, c.cityname from city c LEFT JOIN personals p ON c.cid=p.city WHERE gender = "M" ORDER BY name;

#INTERCHANGED
SELECT * from city c INNER JOIN personals p ON c.cid=p.city;

INSERT INTO personals(id, name, age, gender, city, courses)
VALUES(8, "Raj Aryan", 25, "M", 7, 4),
      (9 , "Golden", 30, "M", 8, 2);
      
#INTERCHANGED
SELECT * FROM personals p LEFT JOIN city c ON p.city=c.cid;
SELECT * FROM city c LEFT JOIN personals p ON c.cid=p.city;     

SELECT p.id, p.name, c.cityname FROM city c LEFT JOIN personals p ON c.cid=p.city;


SELECT p.id, p.name, p.age, p.gender, p.city, c.cityname from personals p LEFT JOIN city c ON p.city=c.cid WHERE gender = "M" ORDER BY name;
SELECT p.id, p.name, p.age, p.gender, p.city, c.cityname from city c LEFT JOIN personals p ON c.cid=p.city WHERE gender = "M" ORDER BY name;

SELECT p.id, p.name, p.age, p.gender, p.city, c.cityname, cr.course_id from personals p INNER JOIN city c ON p.city = c.cid INNER JOIN  courses cr ON p.courses=cr.course_id; 
SELECT p.id, p.name, p.age, p.gender, p.city, c.cityname, cr.course_id from personals p INNER JOIN city c ON p.city = c.cid INNER JOIN  courses cr ON p.courses=cr.course_id WHERE cityname = "Agra";

SELECT c.cityname, COUNT(p.city) as Total
from personals p INNER JOIN city c
on p.city = c.cid
GROUP BY cityname
HAVING COUNT(p.city)>3
ORDER BY COUNT(p.city) desc;


