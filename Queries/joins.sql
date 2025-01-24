SELECT * FROM usuarios;

SELECT * FROM usuarios
JOIN direcciones ON usuarios.direccion_id = direcciones.id;
-- Union entre usuarios y direcciones (1:1)
-- JOIN direcciones.id (llave primaria de direcciones) igualo a direccion_id (llave foranea
SELECT * FROM usuarios
JOIN direcciones ON direcciones.id = usuarios.direccion_id;
-- Union entre pedidos y usuarios (1:n)
-- SELECT columna FROM tabla1
-- JOIN tabla2 ON tabla1.llave_foranea = tabla2.llave_primaria
SELECT * FROM pedidos
JOIN usuarios ON pedidos.usuario_id = usuarios.id;

-- Muestra todos los usuarios que hicieron un pedido
SELECT * FROM usuarios
JOIN pedidos ON pedidos.usuario_id = usuarios.id;

-- Muestra todos los usuarios aunque no tengan un pedido
SELECT * FROM usuarios
LEFT JOIN pedidos ON pedidos.usuario_id = usuarios.id;


-- Union entre usuarios y usuarios_has_hobbies, usuarios_has_hobbies y hobbies (n:m)
-- SELECT columna FROM tabla1
-- JOIN tabla_intermediaria ON tabla1.llave_primaria = tabla_intermediaria.llave_f
-- JOIN tabla2 ON tabla2.llave_primaria = tabla_intermediaria.llave_f
SELECT nombre, actividad FROM usuarios
JOIN usuarios_has_hobbies ON usuarios.id = usuarios_has_hobbies.usuario_id
JOIN hobbies ON hobbies.id = usuarios_has_hobbies.hobbie_id
WHERE actividad = "patinar"
ORDER BY nombre DESC;
