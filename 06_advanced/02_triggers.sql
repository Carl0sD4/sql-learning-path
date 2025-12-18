DELIMITER |
CREATE TRIGGER tg_email
AFTER UPDATE ON users
For EACH ROW
BEGIN 
IF OLD.email <> NEW.email THEN
INSERT INTO email_history (user_id, email)
VALUES (OLD.user_id, OLD.email);
END IF; 
END;

|

delimiter ;


UPDATE users SET email = 'mauredev@gmail.com' WHERE user_id = 1;

