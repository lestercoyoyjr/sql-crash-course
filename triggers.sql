/*
	TRIGGERS
    When an event happens, do something
    ex. (INSERT, UPDATE, DELETE)
    checks data, handles errors, auditing tables
*/

SELECT * FROM Country;

SHOW TRIGGERS;

/* Create a new table 'employees' and add a salary*/
ALTER TABLE employees
ADD COLUMN salary DECIMAL(10,2) AFTER hourly_paid;

select * from employees;

/* Create a method to calculate the salary from each employee */
UPDATE employees
SET salary = hourly_paid * 2080;
-- 2080 it's the amount of hours worked on a basis year on avg
-- However, this im unpractical and has to be performed automatically

/* ------------------- CREATE TRIGGER -------------------	 */
-- BEGINS
CREATE TRIGGER before_hourly_pay_update
BEFORE UPDATE ON employees
FOR EACH ROW
SET NEW.salary = (NEW.hourly_paid * 2080);
-- ENDS

/* ------------------- CREATE TRIGGER WHEN A NEW INSERT -------------------	 */
-- BEGINS
CREATE TRIGGER before_hourly_pay_insert
BEFORE INSERT ON employees
FOR EACH ROW
SET NEW.salary = (NEW.hourly_paid * 2080);
-- ENDS

/* ------------------- CREATE TRIGGER AFTER AN EVENT -------------------	 */
CREATE TRIGGER after_salary_delete
AFTER DELETE ON employees
FOR EACH ROW
UPDATE expenses
SET expense_total = expense_total - OLD.salary
WHERE expense_name = "salaries";