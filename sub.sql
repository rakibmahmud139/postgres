-- Active: 1709305599102@@127.0.0.1@5432@ph@public
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
employee_name VARCHAR(50) NOT NULL,
department_name VARCHAR(50) NOT NULL,
salary DECIMAL(10, 2),
hire_date DATE
)

INSERT INTO employees (employee_name, department_name, salary, hire_date) VALUES
('John Doe', 'Engineering', 60000.00, '2020-01-15'),
('Jane Smith', 'Engineering', 65000.00, '2019-05-20'),
('Michael Johnson', 'Engineering', 62000.00, '2021-02-10'),
('Emily Brown', 'HR', 55000.00, '2018-11-30'),
('David Williams', 'HR', 58000.00, '2017-07-25'),
('Sarah Miller', 'HR', 60000.00, '2019-09-12'),
('Christopher Wilson', 'Marketing', 62000.00, '2020-03-05'),
('Jessica Taylor', 'Marketing', 63000.00, '2019-04-18'),
('Andrew Anderson', 'Marketing', 61000.00, '2021-01-22'),
('Elizabeth Martinez', 'Finance', 67000.00, '2018-08-09'),
('Matthew Jackson', 'Finance', 69000.00, '2017-06-14'),
('Amanda Harris', 'Finance', 71000.00, '2019-10-30'),
('Joshua Thomas', 'Sales', 64000.00, '2020-07-11'),
('Megan Lee', 'Sales', 66000.00, '2019-03-24'),
('Daniel White', 'Sales', 67000.00, '2018-12-01'),
('Jennifer Clark', 'Customer Service', 58000.00, '2021-05-18'),
('Ryan Hall', 'Customer Service', 59000.00, '2020-02-27'),
('Olivia Lewis', 'Customer Service', 57000.00, '2019-01-10'),
('William Walker', 'IT', 70000.00, '2018-04-05'),
('Stephanie Green', 'IT', 72000.00, '2017-09-20'),
('Kevin Carter', 'IT', 73000.00, '2019-11-15'),
('Michelle Hill', 'Administration', 55000.00, '2020-06-29'),
('Brian Baker', 'Administration', 56000.00, '2019-03-12'),
('Lauren Wright', 'Administration', 57000.00, '2018-10-05'),
('James Rodriguez', 'Research and Development', 75000.00, '2017-05-22'),
('Emma Garcia', 'Research and Development', 77000.00, '2018-02-14'),
('Nicholas Martinez', 'Research and Development', 78000.00, '2019-08-08'),
('Ashley King', 'Quality Assurance', 60000.00, '2020-11-03'),
('Brandon Scott', 'Quality Assurance', 61000.00, '2019-04-26'),
('Hannah Turner', 'Quality Assurance', 62000.00, '2018-01-15');


SELECT * from employees;

DROP Table employees;


SELECT max(salary) FROM employees WHERE department_name = 'HR'

SELECT * from employees WHERE salary > (SELECT max(salary) FROM employees WHERE department_name = 'HR')

SELECT *, (SELECT sum(salary) FROM employees) from employees;

SELECT department_name, sum(salary) FROM employees GROUP BY department_name;

SELECT * from 
(SELECT department_name, sum(salary) FROM employees GROUP BY department_name
) as sum_dept_salary;