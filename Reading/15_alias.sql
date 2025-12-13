SELECT * FROM users WHERE age BETWEEN 20 AND 30;

SELECT name, init_date AS 'fecha de inicio en programacion' FROM users WHERE name = 'Brais';

SELECT CONCAT('Nombre: ', name, ', Apellido ', surname) FROM users;

SELECT CONCAT('Nombre: ', name, ', Apellido ', surname) AS 'Nombre completo' FROM users;

