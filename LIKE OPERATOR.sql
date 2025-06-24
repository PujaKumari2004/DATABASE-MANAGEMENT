use  university;

select * from personal where name LIKE "s%";

select * from personal where name LIKE "a%";

select * from personal where name LIKE "ram%";

select * from personal where name LIKE "rm%";

select * from personal where name LIKE "%am%";

select * from personal where name LIKE "r%";

select * from personal where name LIKE "r%" OR name LIKE "s%";

select * from personal where name LIKE "%ar";

select * from personal where name LIKE "s%n";

select * from personal where name LIKE "r%r";

select * from personal where phone NOT LIKE "%21";

select * from personal where name LIKE "_am%";

select * from personal where name LIKE "___%";

select * from personal where name LIKE "___";

select * from personal where name LIKE "__l%";