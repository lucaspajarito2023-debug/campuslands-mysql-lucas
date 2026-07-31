USE campuslands_mysql;

/*=========================================================
  Inserción de inscripciones
=========================================================*/
INSERT INTO inscripciones_carrera_u010(
    numero_dorsal,
    correo_corredor,
    nombre_corredor,
    categoria,
    edad,
    ciudad,
    cuota_inscripcion,
    estado
) VALUES
('D001','carlos.perez@email.com','Carlos Pérez','5K',20,'Guatemala',50.00,'Confirmada'),
('D002','luis.gomez@email.com','Luis Gómez','10K',25,'Antigua',80.00,'Confirmada'),
('D003','ana.lopez@email.com','Ana López','5K',19,'Escuintla',50.00,'Confirmada'),
('D004','maria.ruiz@email.com','María Ruiz','21K',30,'Cobán',120.00,'Confirmada'),
('D005','jose.martinez@email.com','José Martínez','10K',28,'Guatemala',80.00,'Pendiente'),
('D006','daniel.castro@email.com','Daniel Castro','21K',35,'Antigua',120.00,'Confirmada'),
('D007','kevin.morales@email.com','Kevin Morales','5K',22,'Escuintla',50.00,'Confirmada'),
('D008','laura.hernandez@email.com','Laura Hernández','10K',27,'Cobán',80.00,'Cancelada'),
('D009','pedro.ramirez@email.com','Pedro Ramírez','21K',40,'Guatemala',120.00,'Confirmada'),
('D010','sofia.mendez@email.com','Sofía Méndez','5K',18,'Antigua',50.00,'Confirmada');

/*=========================================================
  Ejemplo de prueba UNIQUE (comentado)
=========================================================*/
-- INSERT INTO inscripciones_carrera_u010(
--     numero_dorsal,
--     correo_corredor,
--     nombre_corredor,
--     categoria,
--     edad,
--     ciudad,
--     cuota_inscripcion,
--     estado
-- ) VALUES
-- ('D001','otro@email.com','Prueba Duplicada','5K',21,'Guatemala',50.00,'Pendiente');

-- Error esperado:
-- Duplicate entry 'D001' for key 'numero_dorsal'

-- INSERT INTO inscripciones_carrera_u010(
--     numero_dorsal,
--     correo_corredor,
--     nombre_corredor,
--     categoria,
--     edad,
--     ciudad,
--     cuota_inscripcion,
--     estado
-- ) VALUES
-- ('D011','carlos.perez@email.com','Correo Duplicado','10K',22,'Guatemala',80.00,'Pendiente');

-- Error esperado:
-- Duplicate entry 'carlos.perez@email.com' for key 'correo_corredor'