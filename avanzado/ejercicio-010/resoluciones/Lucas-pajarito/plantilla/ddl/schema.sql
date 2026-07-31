/*=========================================================
  EJERCICIO 010 - BACKUP LOGICO CARRERAS URBANAS
  Archivo: ddl/schema.sql
=========================================================*/

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

/*=========================================================
  Eliminación de tabla
=========================================================*/
DROP TABLE IF EXISTS eventos_carreras_backup10;

/*=========================================================
  Tabla principal
=========================================================*/
CREATE TABLE eventos_carreras_backup10(

    id_evento INT AUTO_INCREMENT PRIMARY KEY,

    nombre_evento VARCHAR(80) NOT NULL UNIQUE,

    fecha_evento DATE NOT NULL,

    ciudad VARCHAR(60) NOT NULL,

    distancia_km DECIMAL(4,1) NOT NULL
        CHECK(distancia_km > 0),

    cupos_disponibles INT NOT NULL
        CHECK(cupos_disponibles >= 0),

    cuota_inscripcion DECIMAL(8,2) NOT NULL
        CHECK(cuota_inscripcion >= 0),

    estado ENUM('Abierto','Cerrado')
        DEFAULT 'Abierto'

);