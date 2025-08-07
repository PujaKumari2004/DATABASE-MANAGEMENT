Use triggers;
CREATE TABLE employ(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

CREATE TABLE employee_audit (
    audit_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_id INT,
    action_type VARCHAR(20),
    old_salary DECIMAL(10,2),
    new_salary DECIMAL(10,2),
    action_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

#  Q1: Create a trigger to log salary changes in an audit table.
DELIMITER //

CREATE TRIGGER after_salary_update
AFTER UPDATE ON employ
FOR EACH ROW
BEGIN
    IF OLD.salary <> NEW.salary THEN
        INSERT INTO employee_audit(emp_id, action_type, old_salary, new_salary)
        VALUES (NEW.id, 'SALARY_UPDATED', OLD.salary, NEW.salary);
    END IF;
END //

DELIMITER ;


# Q2: Trigger to prevent inserting employees with salary less than 10000.
DELIMITER //
CREATE TRIGGER before_insert_check_salary
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN
    IF NEW.salary < 10000 THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Salary must be at least 10000';
    END IF;
END //
DELIMITER ;

#  Q3: Trigger to auto-fill department if not provided.
DELIMITER //
CREATE TRIGGER before_insert_default_department
BEFORE INSERT ON employ
FOR EACH ROW
BEGIN
    IF NEW.department IS NULL OR NEW.department = '' THEN
        SET NEW.department = 'General';
    END IF;
END //
DELIMITER ;



