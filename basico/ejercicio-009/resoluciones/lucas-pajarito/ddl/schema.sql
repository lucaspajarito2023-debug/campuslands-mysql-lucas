/*=========================================================
  EJERCICIO 009 - DELETE CONTROLADO KICKBOXING
  Archivo: ddl/schema.sql
=========================================================*/

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

/*=========================================================
  Eliminación de tablas
=========================================================*/
DROP TABLE IF EXISTS peleadores_kb009;
DROP TABLE IF EXISTS gimnasios_kb009;

/*=========================================================
  Tabla: gimnasios_kb009
=========================================================*/
CREATE TABLE gimnasios_kb009(

    id_gimnasio INT AUTO_INCREMENT PRIMARY KEY,

    nombre_gimnasio VARCHAR(80) NOT NULL UNIQUE,

    ciudad VARCHAR(60) NOT NULL

);

/*=========================================================
  Tabla: peleadores_kb009
=========================================================*/
CREATE TABLE peleadores_kb009(

    id_peleador INT AUTO_INCREMENT PRIMARY KEY,

    nombre_peleador VARCHAR(80) NOT NULL,

    categoria ENUM('Ligero','Medio','Semipesado','Pesado') NOT NULL,

    edad INT NOT NULL CHECK(edad BETWEEN 16 AND 45),

    victorias INT DEFAULT 0 CHECK(victorias >= 0),

    derrotas INT DEFAULT 0 CHECK(derrotas >= 0),

    estado ENUM('Activo','Retirado') DEFAULT 'Activo',

    id_gimnasio INT NOT NULL,

    CONSTRAINT fk_peleador_gimnasio
        FOREIGN KEY(id_gimnasio)
        REFERENCES gimnasios_kb009(id_gimnasio)
        ON DELETE RESTRICT

);