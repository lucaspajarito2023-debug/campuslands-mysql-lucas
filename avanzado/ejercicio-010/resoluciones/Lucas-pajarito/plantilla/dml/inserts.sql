USE campuslands_mysql;

/*=========================================================
  Inserción de eventos
=========================================================*/
INSERT INTO eventos_carreras_backup10(
    nombre_evento,
    fecha_evento,
    ciudad,
    distancia_km,
    cupos_disponibles,
    cuota_inscripcion,
    estado
) VALUES
('Carrera Ciudad 5K','2026-08-10','Guatemala',5.0,120,50.00,'Abierto'),
('Antigua Running 10K','2026-09-05','Antigua',10.0,80,80.00,'Abierto'),
('Escuintla Night Run','2026-07-28','Escuintla',5.0,60,55.00,'Abierto'),
('Cobán Trail 21K','2026-10-12','Cobán',21.0,40,120.00,'Abierto'),
('Gran Fondo Urbano','2026-11-20','Guatemala',21.0,150,150.00,'Abierto'),
('Media Maratón Antigua','2026-12-01','Antigua',21.0,70,130.00,'Abierto'),
('Reto Escuintla 10K','2026-09-18','Escuintla',10.0,90,85.00,'Abierto'),
('Verapaz Run Fest','2026-08-30','Cobán',5.0,50,60.00,'Cerrado');

/*=========================================================
  Simulación de cambios posteriores al backup
=========================================================*/
UPDATE eventos_carreras_backup10
SET cupos_disponibles = cupos_disponibles - 5
WHERE nombre_evento = 'Carrera Ciudad 5K';

UPDATE eventos_carreras_backup10
SET estado = 'Cerrado'
WHERE nombre_evento = 'Antigua Running 10K';