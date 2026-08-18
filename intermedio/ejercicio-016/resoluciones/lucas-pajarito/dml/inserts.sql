USE intermedio_comida_urbana;

-- Carga de Categorías
INSERT INTO categorias_016 (nombre) VALUES
('Hamburguesas'),
('Tacos Urbanos'),
('Hot Dogs Gourmet'),
('Acompañamientos'),
('Bebidas');

-- Carga de Productos
INSERT INTO productos_016 (nombre, precio, categoria_id) VALUES
('Burger Doble Queso', 45.00, 1),
('Burger BBQ Tocino', 52.00, 1),
('Tacos de Birria (3 uds)', 38.00, 2),
('Tacos al Pastor (3 uds)', 35.00, 2),
('Monster Dog Callejero', 30.00, 3),
('Papas Espirales con Queso', 22.00, 4),
('Aros de Cebolla Crocantes', 20.00, 4),
('Gaseosa Artesanal 500ml', 15.00, 5);

-- Carga de Clientes
INSERT INTO clientes_016 (nombre, telefono) VALUES
('Carlos Mendoza', '5551-2345'),
('Ana Lucia Torres', '5552-8765'),
('Sofía Ramírez', '5553-1122'),
('Diego Alejandro Gómez', '5554-9988'),
('María José Morales', '5555-4433'),
('Fernando Ruiz', '5556-7711'),
('Valeria Ortiz', '5557-6655'),
('Gabriel Estrada', '5558-2244');

-- Carga de Detalle de Pedidos
INSERT INTO detalle_pedidos_016 (producto_id, cliente_id, cantidad) VALUES
(1, 1, 2),
(3, 2, 1),
(5, 3, 3),
(2, 4, 1),
(6, 5, 2),
(4, 6, 2),
(8, 7, 4),
(7, 8, 1);