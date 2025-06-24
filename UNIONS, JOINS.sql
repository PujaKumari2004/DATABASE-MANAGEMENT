use company;

create table employee(
emp_id INT,
emp_name VARCHAR(30),
dept_id INT,
salary INT);
INSERT INTO employee(emp_id, emp_name, dept_id, salary)
VALUES(1, "Alice", 101, 6000),
      (2, "Bob", 102, 7000),
      (3, "Charlie", 103, 8000),
      (4, "David", 101, 7500),
      (5, "Eve", 102, 8500);
   
   
   
create table departments(
dept_id INT,
dept_name VARCHAR(20));
INSERT INTO departments(dept_id, dept_name) 
VALUES(101, "HR"),
	  (102, "Sales"),
      (103, "IT"),
      (104, "Marketing");
DROP TABLE departments;      
  
  
create table projects(
project_id INT,
project_name VARCHAR(20),
dept_id INT);
INSERT INTO projects(project_id, project_name, dept_id)
VALUES(1, "Project A", 101),
      (2, "Project B", 102),
      (3, "Project C", 103),
      (4, "Project D", 104);
      
     
     
#1 Retrieve the employees name and department name for each employee.   
	SELECT e.emp_name, d.dept_name from employee e 
    INNER JOIN departments d 
    ON e.dept_id = d.dept_id;
  
#2 Find all employees who work in the "Sales" department
     SELECT e.emp_name, d.dept_name from employee e
     INNER JOIN departments d
     ON e.dept_id = d.dept_id
     WHERE dept_name = "Sales";
     
 #3 List the project names along with the department names.
 SELECT p.project_name, d.dept_name from employee e 
 INNER JOIN departments d
 ON e.dept_id = d.dept_id
 INNER JOIN projects p
 ON d.dept_id = p.dept_id;
 
 #4 Find the employees working on a project in the 'IT' department
 SELECT e.emp_name, d.dept_name from employee e
 INNER JOIN departments d
 ON e.dept_id = d.dept_id
 WHERE dept_name = "IT";
 
 #5 Retrieve the department name for employees whose salary is more than 7500
 SELECT d.dept_name, e.emp_name, e.salary from employee e
 INNER JOIN departments d
 ON e.dept_id = d.dept_id
 WHERE salary > 7500;
 
 #6 Find the number of employees in each departments
 SELECT d.dept_name, COUNT(e.emp_name) from employee e
 INNER JOIN departments d
 ON e.dept_id = d.dept_id
 GROUP BY dept_name;
 
 #7 Get the total salary of each departments
 SELECT d.dept_name, SUM(salary) as Total from employee e
 INNER JOIN departments d
 ON e.dept_id = d.dept_id
 GROUP BY dept_name;
 
 #8 Find all the departments that have no employees
 SELECT d.dept_name, COUNT(e.emp_name) from employee e
 RIGHT JOIN departments d
 ON e.dept_id = d.dept_id
 GROUP BY dept_name
 having COUNT(e.emp_name)=0;
 
 #9 List the employee names and their respective project names.
 SELECT e.emp_name, p.project_name from employee e
 INNER JOIN departments d
 ON e.dept_id = d.dept_id
 INNER JOIN projects p
 ON e.dept_id = p.dept_id;
 
 #10 Find the employee and the project name for employee in 'HR' department.
   SELECT e.emp_name, p.project_name, d.dept_name from employee e
 INNER JOIN departments d
 ON e.dept_id = d.dept_id
 INNER JOIN projects p
 ON e.dept_id = p.dept_id 
 WHERE dept_name = 'HR';
 
 #11 Get all the employee and the projects, even if some employees are not assigned to any projects.
 INSERT INTO employee(emp_id, emp_name, dept_id, salary)
VALUES(6, "Puja", 105, 9000);

SELECT e.emp_name, p.project_name from employee e
LEFT JOIN projects p
ON e.dept_id = p.dept_id;
 
#12 Reteieve departments with more than 1 projects assigned.
INSERT INTO projects(project_id, project_name, dept_id)
VALUES(5, "Project B", 103);

SELECT d.dept_name, COUNT(project_name) from departments d
INNER JOIN projects p
ON d.dept_id = p.dept_id
GROUP BY d.dept_name
HAVING COUNT(project_name) > 1;

#ANOTHER QUERY FOR SAME QUESTION
SELECT d.dept_name, COUNT(dept_name) from departments d
INNER JOIN projects p
ON d.dept_id = p.dept_id
GROUP BY d.dept_name
HAVING COUNT(dept_name) > 1;

#13 Find employees who work in departments that are not assigned any projects.
INSERT INTO departments(dept_id, dept_name)
VALUES(105, "Law associate");

SELECT e.emp_name, d.dept_name, p.project_name from employee e
INNER JOIN departments d
ON e.dept_id = d.dept_id
LEFT JOIN projects p
ON e.dept_id = p.dept_id
WHERE project_name is null;
