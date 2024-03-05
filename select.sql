-- Active: 1709305599102@@127.0.0.1@5432@ph
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY ,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)

INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country) 
VALUES 
    ('John', 'Doe', 18, 'A+', 'Mathematics', 'john.doe@example.com', '2006-05-15', 'A+', 'USA'),
    ('Jane', 'Smith', 17, 'B-', 'Science', 'jane.smith@example.com', '2007-08-20', 'B-', 'Canada'),
    ('Michael', 'Johnson', 19, 'A', 'History', 'michael.johnson@example.com', '2005-02-10', 'O+', 'UK'),
    ('Emily', 'Brown', 16, 'B+', 'English', 'emily.brown@example.com', '2008-11-25', 'B+', 'Australia'),
    ('William', 'Lee', 18, 'A-', 'Physics', 'william.lee@example.com', '2006-07-30', 'AB-', 'Germany'),
    ('Olivia', 'Garcia', 17, 'B', 'Chemistry', 'olivia.garcia@example.com', '2007-04-05', 'O-', 'France'),
    ('James', 'Martinez', 19, 'A+', 'Computer Science', 'james.martinez@example.com', '2005-09-12', 'A-', 'Spain'),
    ('Sophia', 'Lopez', 16, 'B', 'Art', 'sophia.lopez@example.com', '2008-01-18', 'B-', 'Italy');

SELECT * FROM students ORDER BY age ASC;

SELECT DISTINCT country FROM students;

SELECT * from students
    WHERE grade = 'A' AND course = 'History';

SELECT concat(first_name, ' ', last_name) FROM students;

SELECT count(*) FROM students;

SELECT max(length(first_name)) FROM students;

SELECT * FROM students
    WHERE NOT country = 'USA'

SELECT * from students 
    WHERE country IN('USA', 'UK');

SELECT * from students 
    WHERE country NOT IN('USA', 'UK');

SELECT * from students 
    WHERE age BETWEEN 16 and 18;

SELECT * FROM students 
    WHERE first_name LIKE '%ia';

SELECT * FROM students 
    WHERE first_name LIKE '_a%';

SELECT * FROM students 
    WHERE first_name ILIKE 'O%';


SELECT * from students LIMIT 5 OFFSET 5 * 3;

SELECT * from students;

DELETE from students 
    WHERE grade = 'A-' AND country = 'USA';

UPDATE students
    set email = 'default@example.com', age = 30
    WHERE student_id = 5;