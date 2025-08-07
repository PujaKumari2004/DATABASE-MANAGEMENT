use stored_procedure;
CREATE TABLE employees(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);
INSERT INTO employees (name, department, salary) VALUES 
('Alice', 'HR', 45000),
('Bob', 'Finance', 55000),
('Charlie', 'IT', 60000),
('David', 'Marketing', 40000),
('Eve', 'IT', 65000);

#  Q1: Retrieve all records from the employees table.
   DELIMITER //
CREATE PROCEDURE GetAllEmployees()
BEGIN
    SELECT * FROM employees;
END //
DELIMITER ;


 # Q2: Get employee details by ID.
    DELIMITER //
CREATE PROCEDURE GetEmployeeByID(IN emp_id INT)
BEGIN
    SELECT * FROM employees WHERE id = emp_id;
END //
DELIMITER ;


# Q3.  Insert a new employee.
DELIMITER //
CREATE PROCEDURE AddEmployee(
    IN emp_name VARCHAR(100),
    IN emp_dept VARCHAR(50),
    IN emp_salary DECIMAL(10,2)
)
BEGIN
    INSERT INTO employees (name, department, salary)
    VALUES (emp_name, emp_dept, emp_salary);
END //
DELIMITER ;


# Q4: Get total number of employees (using OUT parameter).
  DELIMITER //
CREATE PROCEDURE GetEmployeeCount(OUT emp_count INT)
BEGIN
    SELECT COUNT(*) INTO emp_count FROM employees;
END //
DELIMITER ;

# Q5. Update an employee's salary.
DELIMITER //
CREATE PROCEDURE UpdateSalary(IN emp_id INT, IN new_salary DECIMAL(10,2))
BEGIN
    UPDATE employees
    SET salary = new_salary
    WHERE id = emp_id;
END //
DELIMITER ;

#  Q6: Delete an employee by ID.
   DELIMITER //
CREATE PROCEDURE DeleteEmployee(IN emp_id INT)
BEGIN
    DELETE FROM employees WHERE id = emp_id;
END //
DELIMITER ;

#  Q7: Check if employee has a high or low salary.
   DELIMITER //
CREATE PROCEDURE CheckSalary(IN emp_id INT)
BEGIN
    DECLARE emp_salary DECIMAL(10,2);
    SELECT salary INTO emp_salary FROM employees WHERE id = emp_id;
    
    IF emp_salary > 50000 THEN
        SELECT 'High Salary' AS Result;
    ELSE
        SELECT 'Low Salary' AS Result;
    END IF;
END //
DELIMITER ;

# Q8: Print numbers from 1 to 5.
DELIMITER //
CREATE PROCEDURE PrintNumbers()
BEGIN
    DECLARE num INT DEFAULT 1;

    WHILE num <= 5 DO
        SELECT num;
        SET num = num + 1;
    END WHILE;
END //
DELIMITER ;


#Q9: Call a stored procedure to update salary.
CALL UpdateSalary(3, 70000);

# 10. Create a stored procedure to return the total salary of Specified employees.
	  DELIMITER //
      CREATE PROCEDURE Total_Salary(IN employ_name VARCHAR(20))
      BEGIN
          SELECT employ_name, SUM(salary) FROM employees WHERE employ_name =  name;
      END //
      DELIMITER ;
      #Usages
      CALL Total_Salary("Alice");

