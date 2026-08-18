USE avanzado_comida_urbana;

-- =============================================================================
-- ESCENARIO 1: Transacción Exitosa (COMMIT)
-- Registra un pedido y descuenta el stock de manera atómica.
-- =============================================================================

START TRANSACTION;

-- Paso 1: Insertar el pedido en detalle_pedidos
INSERT INTO detalle_pedidos_016 (producto_id, cliente_id, cantidad, subtotal)
VALUES (1, 1, 2, (SELECT precio * 2 FROM productos_016 WHERE id = 1));

-- Paso 2: Actualizar e inventario descontando las 2 unidades vendidas
UPDATE productos_016 
SET stock = stock - 2 
WHERE id = 1;

-- Paso 3: Confirmar y consolidar la transacción en el disco
COMMIT;


-- =============================================================================
-- ESCENARIO 2: Transacción Fallida con Reversión Controlada (ROLLBACK)
-- Simula la cancelación de un pedido tras un error en la orden.
-- =============================================================================

START TRANSACTION;

-- Paso 1: Se intenta registrar un pedido para el cliente 2
INSERT INTO detalle_pedidos_016 (producto_id, cliente_id, cantidad, subtotal)
VALUES (5, 2, 10, (SELECT precio * 10 FROM productos_016 WHERE id = 5));

-- Paso 2: Validación de negocio (El pedido excede el stock disponible de 8 unidades)
-- Se detecta el problema y se abortan todos los cambios
ROLLBACK;


-- =============================================================================
-- ESCENARIO 3: Transacción Compleja con Puntos de Salvaguarda (SAVEPOINT)
-- Permite guardar avances parciales y revertir operaciones específicas.
-- =============================================================================

START TRANSACTION;

-- Registrar primer ítem de la orden (Burger BBQ)
INSERT INTO detalle_pedidos_016 (producto_id, cliente_id, cantidad, subtotal)
VALUES (2, 3, 1, 52.00);

UPDATE productos_016 SET stock = stock - 1 WHERE id = 2;

-- Punto de control 1
SAVEPOINT sp_primer_item;

-- Registrar segundo ítem de la orden (Aros de Cebolla)
INSERT INTO detalle_pedidos_016 (producto_id, cliente_id, cantidad, subtotal)
VALUES (7, 3, 1, 20.00);

UPDATE productos_016 SET stock = stock - 1 WHERE id = 7;

-- El cliente decide cancelar SOLO el segundo ítem (Aros de Cebolla)
ROLLBACK TO sp_primer_item;

-- Confirmar la transacción (Solo se guarda el primer ítem)
COMMIT;


-- =============================================================================
-- CONSULTAS DE VERIFICACIÓN E INDICADORES (DQL)
-- =============================================================================

-- Consulta 1: Estado del inventario actualizado tras las transacciones
SELECT id, nombre, stock FROM productos_016;

-- Consulta 2: Detalle de pedidos efectivamente procesados y consolidados
SELECT 
    dp.id AS orden_id,
    c.nombre AS cliente,
    p.nombre AS producto,
    dp.cantidad,
    dp.subtotal
FROM detalle_pedidos_016 dp
INNER JOIN clientes_016 c ON dp.cliente_id = c.id
INNER JOIN productos_016 p ON dp.producto_id = p.id;