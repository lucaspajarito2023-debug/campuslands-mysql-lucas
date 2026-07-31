/*=========================================================
  EJERCICIO 009 - BLOQUEOS KICKBOXING
  Archivo: ddl/schema.sql
=========================================================*/

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

/*=========================================================
  Eliminación de tabla
=========================================================*/
DROP TABLE IF EXISTS eventos_kickboxing_lock09;

/*=========================================================
  Tabla principal
=========================================================*/
CREATE TABLE eventos_kickboxing_lock09(

    id_evento INT AUTO_INCREMENT PRIMARY KEY,

    nombre_evento VARCHAR(80) NOT NULL UNIQUE,

    fecha_evento DATE NOT NULL,

    ciudad VARCHAR(60) NOT NULL,

    cupos_disponibles INT NOT NULL
        CHECK(cupos_disponibles >= 0),

    precio_inscripcion DECIMAL(8,2) NOT NULL
        CHECK(precio_inscripcion > 0),

    estado ENUM('Abierto','Cerrado') DEFAULT 'Abierto'

) ENGINE=InnoDB;