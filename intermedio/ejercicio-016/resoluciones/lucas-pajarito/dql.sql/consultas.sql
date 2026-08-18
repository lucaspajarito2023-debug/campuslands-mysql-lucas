USE intermedio_comida_urbana;

-- Consulta 1: Listar productos junto con el nombre de su categoría
SELECT 
    p.id AS producto_id,
    p.nombre AS producto,
    p.precio,
    c.nombre AS categoria
FROM productos_016 p
INNER JOIN categorias_016 c ON p.categoria_id = c.id;

-- Consulta 2: Obtener el detalle completo de los pedidos (Cliente, Producto y Cantidad)
SELECT 
    dp.id AS pedido_id,
    cl.nombre AS cliente,
    p.nombre AS producto,
    dp.cantidad
FROM detalle_pedidos_016 dp
INNER JOIN clientes_016 cl ON dp.cliente_id = cl.id
INNER JOIN productos_016 p ON dp.producto_id = p.id;

-- Consulta 3: Calcular el subtotal consumido por cada pedido (Cantidad * Precio)
SELECT 
    dp.id AS pedido_id,
    cl.nombre AS cliente,
    p.nombre AS producto,
    p.precio,
    dp.cantidad,
    (dp.cantidad * p.precio) AS subtotal
FROM detalle_pedidos_016 dp
INNER JOIN clientes_016 cl ON dp.cliente_id = cl.id
INNER JOIN productos_016 p ON dp.producto_id = p.id;

-- Consulta 4: INNER JOIN con las 4 tablas (Cliente, Producto, Categoría y Cantidad)
SELECT 
    cl.nombre AS cliente,
    p.nombre AS producto,
    cat.nombre AS categoria,
    dp.cantidad
FROM detalle_pedidos_016 dp
INNER JOIN clientes_016 cl ON dp.cliente_id = cl.id
INNER JOIN productos_016 p ON dp.producto_id = p.id
INNER JOIN categorias_016 cat ON p.categoria_id = cat.id;

-- Consulta 5: Filtrar pedidos cuya categoría sea 'Hamburguesas' usando INNER JOIN
SELECT 
    cl.nombre AS cliente,
    p.nombre AS producto,
    cat.nombre AS categoria,
    dp.cantidad
FROM detalle_pedidos_016 dp
INNER JOIN clientes_016 cl ON dp.cliente_id = cl.id
INNER JOIN productos_016 p ON dp.producto_id = p.id
INNER JOIN categorias_016 cat ON p.categoria_id = cat.id
WHERE cat.nombre = 'Hamburguesas';

-- Consulta 6: Obtener los productos pedidos cuyo subtotal sea superior a Q50.00
SELECT 
    cl.nombre AS cliente,
    p.nombre AS producto,
    (dp.cantidad * p.precio) AS subtotal
FROM detalle_pedidos_016 dp
INNER JOIN clientes_016 cl ON dp.cliente_id = cl.id
INNER JOIN productos_016 p ON dp.producto_id = p.id
WHERE (dp.cantidad * p.precio) > 50.00;

-- Consulta 7: Mapear el total consumido agrupado por cliente
SELECT 
    cl.nombre AS cliente,
    SUM(dp.cantidad * p.precio) AS total_gastado
FROM detalle_pedidos_016 dp
INNER JOIN clientes_016 cl ON dp.cliente_id = cl.id
INNER JOIN productos_016 p ON dp.producto_id = p.id
GROUP BY cl.id, cl.nombre;

-- Consulta 8: Mapear el total gastado agrupado por categoría de comida
SELECT 
    cat.nombre AS categoria,
    SUM(dp.cantidad) AS unidades_vendidas,
    SUM(dp.cantidad * p.precio) AS ingresos_totales
FROM detalle_pedidos_016 dp
INNER JOIN productos_016 p ON dp.producto_id = p.id
INNER JOIN categorias_016 cat ON p.categoria_id = cat.id
GROUP BY cat.id, cat.nombre;