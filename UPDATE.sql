create database university;
use university;

create table personal(
  id INT,
  name VARCHAR(20),
  age INT,
  gender VARCHAR(1),
  phone int,
  city VARCHAR(20)
  );
  
  INSERT INTO personal(id, name, age, gender, phone, city) 
  values(1, "Ram Kumar", 19, "M", 4022155, "Agra"),
		(2, "Sarita Kumari", 21, "F", 4034421, "Delhi"),
        (3, "Salman Khan", 20, "M", 4056221, "Agra"),
        (4, "juhi Chawla", 18, "F", 4089821, "Bhopal"),
        (5 ,"Anil Kapoor", 22 , "M", 4025221, "Agra"),
        (6, "John Abraham", 21, "M", 4033776, "Delhi");
        
select * from personal;  

select * from personal where gender = "M";
select * from personal where gender = "F";
select * from personal where city = "Agra";
select * from personal where gender = "Delhi";
select * from personal where   age = 20;
select * from personal where   age>=20;
select * from personal where   age<=20;
select * from personal where   age!=20;
select * from personal where   age<>20;

SET SQL_SAFE_UPDATES=0;
UPDATE personal SET phone="4055555" WHERE id=1;
select * from personal;

UPDATE personal SET age="25" WHERE id=2; 
select * from personal;

UPDATE personal SET age="22", city="Delhi" WHERE id=3;
select * from personal;

UPDATE personal SET age="19";
select * from personal;

UPDATE personal SET age=18 WHERE id in(2,3); 
select * from personal;
