SELECT * FROM usuarios;

-- INSERT: Crea un nuevo registro en mi tabla
INSERT INTO usuarios (nombre, edad, direccion_id) VALUES ("Juana", 30, 3);

DELETE FROM usuarios WHERE id = 8;

UPDATE usuarios SET edad = 31 WHERE id = 9;

UPDATE usuarios SET nombre = "Xx_Juanita_xX", edad = 32 WHERE id = 9;


