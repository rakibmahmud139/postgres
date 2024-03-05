-- Active: 1709305599102@@127.0.0.1@5432@ph@public
SELECT * from employees;

EXPLAIN ANALYSE
SELECT * from employees WHERE employee_name = 'Ryan Hall';

CREATE INDEX idx_employees_name
ON employees (employee_name);

