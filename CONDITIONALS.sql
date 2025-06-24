use university;

SELECT id, name, percentage, age,
if(percentage >= 63,"Pass", "Fail") as result from data;

SELECT id, name, percentage, age,
case
    WHEN percentage >= 80 and percentage <= 100 THEN "Merit"
    WHEN percentage >= 60 and percentage <= 80 THEN "1st Division"
    WHEN percentage >= 45 and percentage <= 60 THEN "2nd Division"
    WHEN percentage >= 33 and percentage <= 45 THEN "3rd Division"
    else "Not correct%"
    END as grade
    from data;