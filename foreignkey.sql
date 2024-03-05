-- Active: 1709305599102@@127.0.0.1@5432@ph
CREATE TABLE "user"(
id SERIAL PRIMARY KEY,
username VARCHAR(25) NOT NULL
)

CREATE Table post(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id) ON DELETE SET NULL
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

DROP Table post;
DROP Table "user";

SELECT * from "user";
SELECT * from post;

DELETE from "user"
    WHERE id = 4
