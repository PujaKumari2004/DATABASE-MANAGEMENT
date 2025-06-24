use university;

select * from personal where age<>18 AND age<>19 AND age<>21;

select * from personal where NOT age=18 AND NOT age=19 AND NOT age=21;

select * from personal where NOT(age=18 OR age=19 OR age=21);

select * from personal where age NOT IN(18, 19, 21);