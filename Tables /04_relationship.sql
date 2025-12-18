CREATE TABLE dni(
dni_id int AUTO_INCREMENT PRIMARY KEY,
dni_number int NOT NULL,
user_id int,
UNIQUE(dni_id),
FOREIGN KEY(user_id) REFERENCES users(user_id) 
); 

CREATE TABLE companies(
    companu_id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(100) NOT NULL
); 

ALTER TABLE users
ADD CONSTRAINT fk_companies
FOREIGN KEY(company_id) REFERENCES companies(company_id):

CREATE TABLE languages(
languages_id int AUTO_INCREMENT PRIMARY KEY, 
name varchar(100) NOT NULL
); 

CREATE TABLE users_languages(
    users_languages_id int AUTO_INCREMENT PRIMARY KEY,
    user_id int,
    language_id int,
    FOREIGN KEY(user_id) REFERENCES users(user_id),
    FOREIGN KEY(language_id) REFERENCES languages(languages_id),
    UNIQUE (user_id, language_id)
);


INSERT INTO companies (name) VALUES ('MAUREDEV');
INSERT INTO companies (name) VALUES ('Apple'); 
INSERT INTO companies (name) VALUES ('GOOGLE'); 

INSERT INTO users_languages (user_id, language_id) VALUES (1, 1); 
INSERT INTO users_languages (user_id, language_id) VALUES (1, 2); 
INSERT INTO users_languages (user_id, language_id) VALUES (1, 5);
INSERT INTO users_languages (user_id, language_id) VALUES (2, 3);
INSERT INTO users_languages (user_id, language_id) VALUES (2, 5);