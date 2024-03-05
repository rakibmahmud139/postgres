-- Active: 1709305599102@@127.0.0.1@5432@ph
CREATE TABLE "user"(
id SERIAL PRIMARY KEY,
username VARCHAR(25) 
)

CREATE Table post(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id)
)

INSERT INTO "user" (username) VALUES
('akash'),
('batash'),
('sagor'),
('nodi');


INSERT INTO post (title, user_id) VALUES
('Exploring the Benefits of Meditation! 🪄', 2),
('The Art of Sustainable Fashion! ✨', 1),
('A Journey Through Historical Landmarks! 🎉', 4),
('Navigating the Challenges of Remote Work! 🎁', 4);

SELECT * from "user";
SELECT * from post;

SELECT title, username FROM post
    JOIN "user" ON post.user_id = "user".id


INSERT INTO post (id,title, user_id) VALUES
(5, 'Exploring the Benefits of Meditation! 🪄', NULL)

SELECT * FROM post
    LEFT JOIN "user" ON post.user_id = "user".id

SELECT * FROM post
    RIGHT JOIN "user" ON post.user_id = "user".id

SELECT * FROM post
    FULL JOIN "user" ON post.user_id = "user".id