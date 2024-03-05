-- Active: 1709305599102@@127.0.0.1@5432@ph
SELECT * from students;

SELECT country, count(*) ,avg(age) from students
    GROUP BY country;

SELECT country,avg(age) from students
    GROUP BY country
      HAVING avg(age) > 18;

-- count students Born in each year
SELECT extract(year from dob) as birth_year, count(*) 
   from students
    GROUP BY dob;