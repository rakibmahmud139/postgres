-- Active: 1709305599102@@127.0.0.1@5432@ph@public

-- CREATE Trigger trigger_name
-- {BEFORE | AFTER | INSTEAD OF} {INSERT | UPDATE | DELETE | TRUNCATE}
-- on table_name
-- [FOR EACH ROW]
-- EXECUTE FUNCTION function_name();

CREATE Table my_users (
    user_name VARCHAR(50),
    email VARCHAR(100)
)

INSERT into my_users VALUES('mezba', 'mezba@gmail'), ('mir', 'mir@gmail')

CREATE Table deleted_users_audit
(
    deleted_usernames VARCHAR(50),
    deletedAt TIMESTAMP
)

CREATE OR REPLACE Function save_deleted_user()
RETURNS TRIGGER
LANGUAGE plpgsql
AS
$$
    BEGIN
    INSERT INTO deleted_users_audit VALUES(OLD.user_name, now());
    RAISE NOTICE 'deleted user audit log created';
    RETURN OLD;
    END
$$

CREATE OR REPLACE Trigger save_deleted_user_trigger
BEFORE DELETE
ON my_users
FOR EACH ROW
EXECUTE FUNCTION save_deleted_user();

SELECT * from my_users;
SELECT * from deleted_users_audit;

DELETE FROM my_users WHERE user_name = 'mir';