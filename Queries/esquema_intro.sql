-- Query = consulta. Instruccion que se manda al servidor para hacer algo especifico: Seleccionar, Guardar registro, Actualizar o borrar
-- CRUD: Create Read Update & Delete
-- SELECT: Seleccionar informacion de una tabla
SELECT * FROM usuarios; -- SELECT * FROM <tabla>; : Seleccionas todas las columnas de una tabla especifica

SELECT nombre, edad FROM usuarios; -- SELECT <columna1>, <columna2> FROM <tabla>; : visualiza columnas especificas de una tabla especifica

SELECT nombre, edad FROM usuarios WHERE id = 2; -- SELECT <columna1>, <columna2> FROM <tabla> WHERE <id> = int; Filtra los registros a mostrar

SELECT * FROM usuarios WHERE edad > 20;

SELECT * FROM usuarios WHERE nombre LIKE "Aureliano";  -- LIKE compara texto

SELECT nombre FROM usuarios WHERE nombre LIKE "Al%"; -- % comodin es decir Alxxxxx

SELECT nombre FROM usuarios WHERE nombre LIKE "%o";

SELECT nombre FROM usuarios WHERE nombre LIKE "%e%";

-- && AND
SELECT * FROM usuarios WHERE nombre LIKE "%o" AND edad > 23;

-- || OR
SELECT * FROM usuarios WHERE nombre LIKE "%o" OR edad > 23;

SELECT * FROM usuarios WHERE edad > 25 ORDER BY nombre; -- Default ASC (A to Z) DESC(Z to A)
SELECT * FROM usuarios WHERE edad > 25 ORDER BY edad DESC;

SELECT * FROM usuarios ORDER BY edad DESC LIMIT 0, 3;-- LIMIT limita la cantidad de resultados inicio, cantidad





