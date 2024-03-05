-- Active: 1709305599102@@127.0.0.1@5432@ph@public
CREATE View dept_avg_salary
AS
SELECT department_name, avg(salary) FROM employees GROUP BY department_name;

SELECT * FROM dept_avg_salary;