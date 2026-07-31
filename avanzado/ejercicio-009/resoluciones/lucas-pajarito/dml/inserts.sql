USE campuslands_mysql;

/*=========================================================
  Inserción de eventos
=========================================================*/
INSERT INTO eventos_kickboxing_lock09(
    nombre_evento,
    fecha_evento,
    ciudad,
    cupos_disponibles,
    precio_inscripcion,
    estado
) VALUES
('Copa Kick 2026','2026-09-15','Guatemala',5,150.00,'Abierto'),
('Open Antigua Fight','2026-10-10','Antigua',12,125.00,'Abierto'),
('Escuintla Combat Day','2026-08-22','Escuintla',8,100.00,'Abierto'),
('Cobán Warriors Cup','2026-11-05','Cobán',0,140.00,'Cerrado'),
('Gran Prix Maya','2026-12-01','Guatemala',20,180.00,'Abierto'),
('Noche de Campeones','2026-07-30','Guatemala',3,200.00,'Abierto'),
('Verapaz Strike Fest','2026-09-02','Cobán',6,110.00,'Abierto'),
('Antigua Elite Series','2026-10-28','Antigua',15,175.00,'Abierto');