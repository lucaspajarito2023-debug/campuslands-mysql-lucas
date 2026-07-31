/*=========================================================
  EJERCICIO 010 - COUNT Y SUM CARRERAS URBANAS
  Archivo: ddl/schema.sql
=========================================================*/

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

/*=========================================================
  Eliminación de tabla
=========================================================*/
DROP TABLE IF EXISTS corredores_urbanos_010;

/*=========================================================
  Tabla principal
=========================================================*/
CREATE TABLE corredores_urbanos_010(

    id_corredor INT AUTO_INCREMENT PRIMARY KEY,

    nombre_corredor VARCHAR(80) NOT NULL,

    categoria ENUM('5K','10K','21K') NOT NULL,

    edad INT NOT NULL
        CHECK(edad BETWEEN 15 AND 70),

    kilometros_recorridos DECIMAL(6,2) NOT NULL
        CHECK(kilometros_recorridos >= 0),

    cuota_inscripcion DECIMAL(8,2) NOT NULL
        CHECK(cuota_inscripcion >= 0),

    estado ENUM('Inscrito','Retirado') DEFAULT 'Inscrito'

);