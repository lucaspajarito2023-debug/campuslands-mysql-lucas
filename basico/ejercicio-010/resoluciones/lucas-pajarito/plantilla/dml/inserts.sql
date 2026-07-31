USE campuslands_mysql;

/*=========================================================
  Inserción de corredores
=========================================================*/
INSERT INTO corredores_urbanos_010(
    nombre_corredor,
    categoria,
    edad,
    kilometros_recorridos,
    cuota_inscripcion,
    estado
) VALUES
('Carlos Pérez','5K',20,5.00,50.00,'Inscrito'),
('Luis Gómez','10K',25,10.00,80.00,'Inscrito'),
('Ana López','5K',19,5.00,50.00,'Inscrito'),
('María Ruiz','21K',30,21.00,120.00,'Inscrito'),
('José Martínez','10K',28,10.00,80.00,'Inscrito'),
('Daniel Castro','21K',35,21.00,120.00,'Retirado'),
('Kevin Morales','5K',22,5.00,50.00,'Inscrito'),
('Laura Hernández','10K',27,10.00,80.00,'Inscrito'),
('Pedro Ramírez','21K',40,21.00,120.00,'Inscrito'),
('Sofía Méndez','5K',18,5.00,50.00,'Inscrito');
