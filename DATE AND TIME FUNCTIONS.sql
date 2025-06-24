use university;

SELECT current_date();

SELECT curdate();

SELECT sysdate();

SELECT now(); #GIVES BOTH DATE AND TIME OF THE SYSTEM

select date("2019-10-15 09:34:21") as Date;

select month("2019-10-15 09:34:21") as Month;

select monthname("2019-10-15 09:34:21") as MonthName;

select year("2019-10-15 09:34:21") as Year;

select quarter("2019-10-15 09:34:21") as Quarter;

select day("2019-10-15 09:34:21") as Day;

select dayname("2019-10-15 09:34:21") as dayname;

select dayofweek("2019-10-13 09:34:21") as Dayofweek; #SUNDAY-1, MOMNDAY-2, WEDNESDAY-3,.....SATURDAY-7

select dayofyear("2019-10-15 09:34:21") as DayOfYear;

select week("2019-10-15 09:34:21") as Week;

select weekday("2019-10-15 09:34:21") as WeekDay;

select last_day("2019-10-15 09:34:21") as Lastdayofmonth;

select extract(month from "2019-10-15 09:34:21") as month;

select extract(year from "2019-10-15 09:34:21") as Year;

select extract(week from "2019-10-15 09:34:21") as Week;

select extract(hour from "2019-10-15 09:34:21") as Hour;

select extract(minute from "2019-10-15 09:34:21") as Minute;

select extract(second from "2019-10-15 09:34:21") as Second;




SELECT ADDDATE("2019-10-15", INTERVAL 10 DAY);

SELECT ADDDATE("2019-10-15", INTERVAL 1 month);

SELECT ADDDATE("2019-10-15", INTERVAL 1 Year);

SELECT ADDDATE("2019-10-15", INTERVAL 24 hour);

SELECT DATE_ADD("2019-10-15", INTERVAL 24 HOUR);

SELECT MAKEDATE(2016,3);

SELECT SUBDATE("2019-10-15", INTERVAL 1 DAY);

SELECT DATEDIFF("2019-06-15", "2019-06-01");


#TIME FUNCTIONS

SELECT current_time();

select curtime();

select current_timestamp();

select localtime();

select localtimestamp();

select time("2019-06-15 13:15:20");

select hour("2019-06-15 13:15:20");

select minute("2019-06-15 13:15:20");





