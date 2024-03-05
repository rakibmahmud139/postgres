-- Active: 1709305599102@@127.0.0.1@5432@ph
CREATE Table person1 (
      id SERIAL PRIMARY KEY,
    user_name VARCHAR(50),
    age INTEGER
);

INSERT INTO person1 (user_name, age) VALUES ('Rakib', 30);

SELECT * FROM person1;

ALTER Table person1
    ADD COLUMN email VARCHAR(25) DEFAULT 'default@mail.com' NOT NULL;

ALTER TABLE person1
    DROP COLUMN email;

ALTER TABLE person1
    ALTER COLUMN user_name Type VARCHAR(30);

ALTER TABLE person1
    ALTER COLUMN user_age set not NULL;

ALTER TABLE person1
    ALTER COLUMN user_age DROP not NULL;

ALTER TABLE person1
    RENAME COLUMN age to user_age;

ALTER TABLE person1
    ADD constraint unique_person1_user_age UNIQUE(user_age);

ALTER TABLE person1
    DROP constraint unique_person1_user_age;


TRUNCATE TABLE person1;

INSERT INTO person1 VALUES(3, 'test2', 20,'test2@mail.com' );
