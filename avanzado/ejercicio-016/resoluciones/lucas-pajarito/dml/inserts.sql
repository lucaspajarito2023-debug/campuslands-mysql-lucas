USE avanzado_comida_urbana;

-- Carga de Categorías
INSERT INTO categorias_016 (nombre) VALUES
('Hamburguesas'),
('Tacos Urbanos'),
('Hot Dogs Gourmet'),
('Acompañamientos'),
('Bebidas');

-- Carga de Productos con Control de Inventario (Stock)
INSERT INTO productos_016 (nombre, precio, stock, categoria_id) VALUES
('Burger Doble Queso', 45.00, 15, 1),
('Burger BBQ Tocino', 52.00, 10, 1),
('Tacos de Birria (3 uds)', 38.00, 20, 2),
('Tacos al Pastor (3 uds)', 35.00, 25, 2),
('Monster Dog Callejero', 30.00, 8, 3),
('Papas Espirales con Queso', 22.00, 30, 4),
('Aros de Cebolla Crocantes', 20.00, 5, 4),
('Gaseosa Artesanal 500ml', 15.00, 40, 5);

-- Carga de Clientes
INSERT INTO clientes_016 (nombre, telefono) VALUES
('Carlos Mendoza', '5551-2345'),
('Ana Lucia Torres', '5552-8765'),
('Sofía Ramírez', '5553-1122'),
('Diego Alejandro Gómez', '5554-9988');