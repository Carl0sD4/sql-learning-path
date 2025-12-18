DELIMITER //
CREATE PROCEDURE p_all_USERS()
BEGIN
SELECT * FROM users; 
END//

CALL p_all_users;

DELIMITER //
CREATE PROCEDURE p_age_users(IN age_param int)
BEGIN
SELECT * FROM users WHERE age = age_param;
END//

CALL p_age_users(30);