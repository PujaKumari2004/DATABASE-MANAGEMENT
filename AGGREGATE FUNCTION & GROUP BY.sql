use university; 
 
select count(name) from personal;

select count(*) from personal; #GIVING THE COUNT OF THE WHOLE TABLE

select count(city) from personal;

select count(distinct city) as cities from personal;#COUNT EACH CITY DISTINCTLY

select count(distinct city) as total_cities from personal;#COUNT EACH CITY DISTINCTLY

select count(distinct city) as "total cities" from personal; #COUNT EACH CITY DISTINCTLY

select max(age) as percentage from personal;

select min(age) as percentage from personal;

select sum(age) as total from personal;

select sum(age) from personal;

select avg(age) as average from personal;



