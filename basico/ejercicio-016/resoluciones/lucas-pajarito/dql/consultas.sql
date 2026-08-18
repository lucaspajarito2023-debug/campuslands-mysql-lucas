USE basico_comida_urbana;

-- Consulta 1: Listar todas las categorías del menú
SELECT * FROM categorias_016;

-- Consulta 2: Obtener únicamente el nombre y precio de los productos
SELECT nombre, precio FROM productos_016;

-- Consulta 3: Listar clientes ordenados alfabéticamente
SELECT nombre, telefono FROM clientes_016 
ORDER BY nombre ASC;

-- Consulta 4: Filtrar productos pertenecientes a la categoría 1 (Hamburguesas)
SELECT * FROM productos_016 
WHERE categoria_id = 1;

-- Consulta 5: Obtener productos cuyo precio sea mayor a Q30.00
SELECT * FROM productos_016 
WHERE precio > 30.00;

-- Consulta 6: Contar el total de clientes registrados
SELECT COUNT(*) AS total_clientes FROM clientes_016;

-- Consulta 7: Top 3 productos con más cantidad pedida en los detalles
SELECT * FROM detalle_pedidos_016 
ORDER BY cantidad DESC 
LIMIT 3;

-- Consulta 8: Calcular el precio promedio de los productos del menú
SELECT AVG(precio) AS precio_promedio FROM productos_016;