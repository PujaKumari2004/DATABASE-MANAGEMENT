use university;

#STRING FUNCTIONS

select id, UPPER(name) as Name, percentage from data;

select id, UCASE(name) as Name, percentage from data;

select id, LOWER(name) as Name, percentage from data;

select id, LCASE(name) as Name, percentage from data;

select id, name, CHARACTER_LENGTH(name) as characters from data;

select id, name, CHAR_LENGTH(name) as characters from data;

select id, name, LENGTH(name) as characters from data;


#CONCATENATE FUNCTIONS

select id, CONCAT(name, percentage) as Name from data;

select id, CONCAT(name," ",percentage) as Name from data;

select id, CONCAT(name,"-",percentage) as Name from data;

select CONCAT("Puja","Kumari") as Name;

select CONCAT_WS("Puja","Kumari","Hello","Class") as Name;

select CONCAT_WS("-","Puja","Kumari","Hello","Class") as Name;

select "    Puja    " as Name;


#LTRIM AND RTRIM OPERATORS
select LTRIM("    Puja    ") as Name;
select RTRIM("    Puja    ") as Name;
select TRIM("    Puja    ") as Name;

#POSITION OPERATOR
select POSITION("World" IN "HelloWorld") as  Text;
select POSITION("is" IN "HelloWorld") as  Text;
select POSITION("o" IN "HelloWorld") as  Text;
select POSITION("ell" IN "HelloWorld") as  Text;

#INSTRING/LOCATE OPERATOR
select INSTR("HelloWorld","ell") as Position;
select LOCATE("ell","HelloWorld") as Position;
select LOCATE("l","HelloWorld",2) as Positions;
select LOCATE("l","HelloWorld",5) as Positions;
select LOCATE("l","HelloWorld",7) as Positions;



select INSTR("Hello World","ell") as Position;
select LOCATE("ell","Hello World") as Position;
select LOCATE("l","Hello World",5) as Positions;

#SUBSTRING
select SUBSTRING("Puja Kumari", 3);
select SUBSTRING("Puja Kumari", 5) as Name;
select SUBSTRING("Puja Kumari", 3, 6) as Name;
SELECT SUBSTRING('Puja Kumari', - 6, 3) as Name;
select SUBSTR("Puja Kumari", -6,3) as Name;
select MID("Puja Kumari", -6, 3) as Name; #SUBSTRING AND MID SAME
select SUBSTRING_INDEX("www.PujaKumari.net",".",1) as Name;
select SUBSTRING_INDEX("www.PujaKumari.net",".",2) as Name;
select SUBSTRING_INDEX("www.PujaKumari.net","j",1) as Name;
select SUBSTRING_INDEX("www.PujaKumari.net","j",2) as Name;


select LEFT("Puja Kumari", 3) as Name;
select LEFT("Puja Kumari", 5) as Name;
select RIGHT("Puja Kumari", 5) as Name;
select RPAD("Puja Kumari", 20, "-") as Name;
select RPAD("Puja Kumari", 20, "ABC") as Name;
select RPAD("Puja Kumari", 20, "*") as Name;
select LPAD("Puja Kumari", 20, "*") as Name;


select REVERSE("Puja Kumari") as Reverse_Name;
select REPLACE("Puja Kumari", "Kumari", "Student");
select REPLACE("Puja Kumari Puja Kumari","Kumari", "Student");

#STRING COMPARISON
select STRCMP("Puja Kumari", "Puja Kumari");
select STRCMP("Puja Kumari", "puja kumari");
select STRCMP("Puja Kumari", "Puja");
select STRCMP("Neema Jha", "Neema Jha Mam");
select STRCMP("Puja", "Puja Kumari");
select STRCMP("Neema Jha", "Riya Suryavanshi");
select STRCMP("Neema Jha", "Riya");

select format(255.3568, 3) as value;
select FIELD("a", "X", "a", "k") as Name; #GIVING INDEX OF THE FIRST ELEMENT AS OUTPUT
SELECT FIELD('a', 'X', 'b', 'K') AS Name;
select FIELD("a", "X", "a", "K") as Name;
select FIELD(3,0,1,2,3,4,5);
select FIELD("ram", "Ram", "Mohan", "Shyam");
select FIND_IN_SET("Mohan", "Ram,Mohan,Shyam");
select FIND_IN_SET("Mohan","Ram, Mohan,Shyam");

select HEX("Neema Jha");





