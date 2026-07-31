USE campuslands_mysql;

/*=========================================================
  Inserción de academias
=========================================================*/
INSERT INTO academias_kbx_fk09(nombre_academia, ciudad) VALUES
('Titan Combat Academy','Guatemala'),
('Dragon Warriors Gym','Antigua'),
('Escuintla Strike Team','Escuintla'),
('Alta Verapaz Kick Center','Cobán');

/*=========================================================
  Inserción de peleadores
=========================================================*/
INSERT INTO peleadores_kbx_fk09(
    nombre_peleador,
    categoria,
    edad,
    victorias,
    derrotas,
    estado,
    id_academia
) VALUES
('Carlos Méndez','Ligero',20,12,2,'Activo',1),
('Luis Herrera','Ligero',22,10,3,'Activo',1),
('Andrés Castro','Medio',24,15,5,'Activo',2),
('Miguel Sandoval','Pesado',27,18,4,'Activo',2),
('José Alvarado','Ligero',19,8,1,'Activo',3),
('Daniel Fuentes','Semipesado',23,11,2,'Activo',3),
('Kevin Rojas','Medio',20,5,6,'Suspendido',4),
('Pedro Vásquez','Pesado',28,7,7,'Activo',4);

/*=========================================================
  Inserción de combates
=========================================================*/
INSERT INTO combates_kbx_fk09(
    fecha_combate,
    id_local,
    id_visitante,
    id_ganador,
    metodo_victoria
) VALUES
('2026-01-10',1,2,1,'Decision'),
('2026-02-15',3,5,3,'TKO'),
('2026-03-20',4,8,4,'KO'),
('2026-04-12',6,7,6,'Decision'),
('2026-05-08',2,5,5,'Abandono'),
('2026-06-18',3,6,3,'Decision');