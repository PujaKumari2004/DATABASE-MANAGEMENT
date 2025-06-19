Create database Assignments;
use Assignments;

CREATE TABLE Employee(
emp_id INT,
First_name VARCHAR(50),
Last_name VARCHAR(50),
Department VARCHAR(10),
Salary INT,
Hire_date Date);

INSERT INTO Employee(emp_id, First_name, Last_name, Department, Salary, Hire_date)
VALUES(1, "John", "Doe", "IT", 60000.00, "2019-01-10"),
      (2, "Jane", "Smith", "HR", 55000.00, "2018-03-05"),
      (3, "Emily", "Jones", "IT", 62000.00, "2020-07-24"),
      (4, "Michael", "Brown", "Finance", 70000.00, "2016-05-14"),
      (5, "Sarah", "Davis", "Finance", 69000.00, "2017-11-18"),
      (6, "David", "Johnson", "HR", 48000.00, "2021-09-10");

 #1. Find the average salary of employees in each department. 
      SELECT Department, AVG(salary) FROM Employee
      GROUP BY Department;

#2. Find the total number of employees hired after 2019. 
	SELECT count(first_name) FROM Employee
    where year(Hire_date) >"2019-12-31";
    
#3.  List the departments and the total salary of all employees in each department, ordered by the total salary.     
     SELECT Department, SUM(salary) AS Total_Salary 
     FROM Employee 
     GROUP BY Department 
     ORDER BY Total_Salary;
  
#4.  Find the highest salary in the Finance department.
     SELECT MAX(Salary) as Highest_salary FROM Employee;
     
#5.  Get the top 3 highest-paid employees.
     SELECT First_name 
     FROM Employee 
     ORDER BY Salary
     DESC LIMIT 3;
     
#6. Find the department with the minimum average salary.
    SELECT Department, AVG(Salary) AS Average_salary 
    FROM Employee GROUP BY Department ORDER BY Average_salary LIMIT 1;
    
#7.  Display the total number of employees in each department, ordered by the number of employees.  
     SELECT  Department, COUNT(emp_id) AS NumOfEmp 
     FROM Employee GROUP BY Department ORDER BY NumOfEmp;

#8.  Find the average salary of employees who were hired before 2020.
     SELECT Hire_date, AVG(Salary) 
     FROM Employee WHERE Hire_date<"2019-12-31" GROUP BY Hire_date;
     
#9.  List the names of employees in the IT department ordered by hire date, with the most recently hired employees first. 
      SELECT First_name, Hire_date FROM Employee
      WHERE Department="IT" ORDER BY Hire_date DESC;
    
#10.  Find the sum of salaries for all employees hired after January 1, 2019, ordered by salary.
      SELECT Department, SUM(Salary) AS Total_Salary 
      FROM Employee WHERE Hire_date>"2019-01-01" 
      GROUP BY Department ORDER BY Total_Salary ; 
  
#11.  Get the employee with the lowest salary in the HR department. 
      SELECT First_name, Salary FROM Employee
      WHERE Department = "HR" ORDER BY Salary DESC LIMIT 1;
		
#12.  Find the total salary paid to employees in each department, but limit the result to the top 2 highest-paying departments.
      SELECT Department, SUM(Salary) AS Total_salary FROM Employee 
      GROUP BY Department ORDER BY Total_salary DESC LIMIT 2;
      
#13.  List all employees hired after 2018, ordered by salary, and show only the first 4 employees. 
	  SELECT First_name FROM Employee
      WHERE Hire_date>"2018-12-31" ORDER BY Hire_date DESC lIMIT 4;
       
#14.  Find the highest salary in the IT department, but limit the results to the top 1 result
      SELECT Department, Salary FROM Employee 
      WHERE Department="IT" ORDER BY Salary LIMIT 1;
      
#15. Get the average salary of employees in each department and list only departments with an average salary greater than $60,000.
     SELECT Department, AVG(Salary) AS Average_salary FROM Employee 
     GROUP BY Department HAVING Average_salary>60000;