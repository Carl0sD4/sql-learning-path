SELECT *,
CASE 
 WHEN age > 17 THEN 'es mayor de edad'
 ELSE 'Es menor de edad'
END AS agetext
FROM users;

SELECT *,
CASE 
 WHEN age > 17 THEN TRUE
 ELSE FALSE
END AS 'es mayor de edad'
FROM users;

SELECT *, 
CASE 
 WHEN age > 18 THEN 'es mayor de edad'
 WHEN age = 18 THEN 'acaba de cumplir la mayoria de edad' 
 ELSE 'es menor de edad'
END AS 'ES MAYOR DE EDAD'
FROM users;