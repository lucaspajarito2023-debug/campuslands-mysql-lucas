/*=========================================================
  EJERCICIO 009 - FOREIGN KEY KICKBOXING
  Archivo: ddl/schema.sql
=========================================================*/

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

/*=========================================================
  Eliminación de tablas
=========================================================*/
DROP TABLE IF EXISTS combates_kbx_fk09;
DROP TABLE IF EXISTS peleadores_kbx_fk09;
DROP TABLE IF EXISTS academias_kbx_fk09;

/*=========================================================
  Tabla: academias_kbx_fk09
=========================================================*/
CREATE TABLE academias_kbx_fk09(

    id_academia INT AUTO_INCREMENT PRIMARY KEY,

    nombre_academia VARCHAR(80) NOT NULL UNIQUE,

    ciudad VARCHAR(60) NOT NULL

);

/*=========================================================
  Tabla: peleadores_kbx_fk09
=========================================================*/
CREATE TABLE peleadores_kbx_fk09(

    id_peleador INT AUTO_INCREMENT PRIMARY KEY,

    nombre_peleador VARCHAR(80) NOT NULL,

    categoria ENUM('Ligero','Medio','Semipesado','Pesado') NOT NULL,

    edad INT NOT NULL CHECK(edad BETWEEN 16 AND 45),

    victorias INT DEFAULT 0 CHECK(victorias >= 0),

    derrotas INT DEFAULT 0 CHECK(derrotas >= 0),

    estado ENUM('Activo','Suspendido') DEFAULT 'Activo',

    id_academia INT NOT NULL,

    CONSTRAINT fk_peleador_academia
        FOREIGN KEY(id_academia)
        REFERENCES academias_kbx_fk09(id_academia)
        ON UPDATE CASCADE
        ON DELETE RESTRICT

);

/*=========================================================
  Tabla: combates_kbx_fk09
=========================================================*/
CREATE TABLE combates_kbx_fk09(

    id_combate INT AUTO_INCREMENT PRIMARY KEY,

    fecha_combate DATE NOT NULL,

    id_local INT NOT NULL,

    id_visitante INT NOT NULL,

    id_ganador INT NOT NULL,

    metodo_victoria ENUM('KO','TKO','Decision','Abandono') NOT NULL,

    CONSTRAINT fk_combate_local
        FOREIGN KEY(id_local)
        REFERENCES peleadores_kbx_fk09(id_peleador),

    CONSTRAINT fk_combate_visitante
        FOREIGN KEY(id_visitante)
        REFERENCES peleadores_kbx_fk09(id_peleador),

    CONSTRAINT fk_combate_ganador
        FOREIGN KEY(id_ganador)
        REFERENCES peleadores_kbx_fk09(id_peleador)

);