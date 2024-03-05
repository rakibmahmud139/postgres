-- Active: 1709305599102@@127.0.0.1@5432@ph
SHOW timezone;

CREATE Table timez (tz TIMESTAMP without time zone, tzw TIMESTAMP with time zone);

INSERT into timez VALUES('2022-03-02 12:30:00', '2022-03-02 12:30:00');

SELECT * FROM timez;

SELECT to_char(now(), 'DDD');

SELECT age(CURRENT_DATE, '2003-03-02');

SELECT *, age(CURRENT_DATE, dob) from students;

SELECT extract(year from '2003-03-02'::DATE)

