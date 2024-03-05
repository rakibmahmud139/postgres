-- Active: 1709305599102@@127.0.0.1@5432@ph@public
CREATE Function emp_count()
RETURNS INT
LANGUAGE SQL
AS
$$
SELECT count(*) FROM employees;
$$;


CREATE Function delete_emp(p_emp_id int)
RETURNS void
LANGUAGE SQL
AS
$$
 DELETE from employees WHERE employee_id = p_emp_id
$$

SELECT emp_count();
SELECT delete_emp(30)

SELECT * FROM employees;


CREATE Procedure remove_emp()
LANGUAGE plpgsql
AS
$$
 BEGIN
  DELETE from employees WHERE employee_id = 29;
 END
$$

CREATE Procedure remove_emp_var()
LANGUAGE plpgsql
AS
$$
    DECLARE 
    test_var int;
    BEGIN
     SELECT employee_id INTO test_var FROM employees WHERE employee_id = 28;
     DELETE from employees WHERE employee_id = test_var;
    END
$$

CREATE Procedure remove_emp_by_id(p_emp_id int)
LANGUAGE plpgsql
AS
$$
    DECLARE 
    test_var int;
    BEGIN
     SELECT employee_id INTO test_var FROM employees WHERE employee_id = p_emp_id;
     DELETE from employees WHERE employee_id = test_var;

     RAISE NOTICE 'Removed employee successfully!';
    END
$$

CALL remove_emp_var();
CALL remove_emp_by_id(27);