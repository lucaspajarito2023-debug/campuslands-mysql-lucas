/*=========================================================
  EJERCICIO 010 - UNIQUE CARRERAS URBANAS
  Archivo: ddl/schema.sql
=========================================================*/

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

/*=========================================================
  Eliminación de tabla
=========================================================*/
DROP TABLE IF EXISTS inscripciones_carrera_u010;

/*=========================================================
  Tabla principal
=========================================================*/
CREATE TABLE inscripciones_carrera_u010(

    id_inscripcion INT AUTO_INCREMENT PRIMARY KEY,

    numero_dorsal VARCHAR(10) NOT NULL UNIQUE,

    correo_corredor VARCHAR(120) NOT NULL UNIQUE,

    nombre_corredor VARCHAR(80) NOT NULL,

    categoria ENUM('5K','10K','21K') NOT NULL,

    edad INT NOT NULL
        CHECK(edad BETWEEN 15 AND 70),

    ciudad VARCHAR(60) NOT NULL,

    cuota_inscripcion DECIMAL(8,2) NOT NULL
        CHECK(cuota_inscripcion >= 0),

    estado ENUM('Confirmada','Pendiente','Cancelada')
        DEFAULT 'Pendiente'

);