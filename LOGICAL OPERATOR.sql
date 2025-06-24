#LOGICAL OPERATOR

use university;

select * from personal;

select * from personal where age>=18 AND gender="M";

select * from personal where age>=18 AND gender="F";

select * from personal where age>18 AND age<20;

select * from personal where age<=20 AND gender="M" AND city="Agra";

select * from personal where age>=20 OR gender="M";

select * from personal where age>=20 OR gender="Agra";

select * from personal where city="Agra" OR city="Bhopal";

select * from personal where city="Agra" OR city="Bhopal" AND gender="M";

select * from personal where city="Agra" OR city="Bhopal" OR gender="M";

select * from personal where NOT(city="Agra" OR city="Bhopal");

select * from personal where age<>20;

select * from personal where age!=20;

select * from personal where NOT age=20;

select * from personal where NOT city="Bhopal" OR city="Agra";
