-- Creación y selección de la Base de Datos
CREATE DATABASE IF NOT EXISTS intermedio_comida_urbana;
USE intermedio_comida_urbana;

-- Limpieza previa de tablas en orden inverso a sus dependencias
DROP TABLE IF EXISTS detalle_pedidos_016;
DROP TABLE IF EXISTS productos_016;
DROP TABLE IF EXISTS clientes_016;
DROP TABLE IF EXISTS categorias_016;

-- Creación de tablas principales
CREATE TABLE categorias_016 (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(80) NOT NULL
);

CREATE TABLE productos_016 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(80) NOT NULL,
    precio DECIMAL(8, 2) NOT NULL CHECK(precio > 0),
    categoria_id INT NOT NULL,
    FOREIGN KEY (categoria_id) REFERENCES categorias_016(id)
);

CREATE TABLE clientes_016 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(80) NOT NULL,
    telefono VARCHAR(20) NOT NULL
);

CREATE TABLE detalle_pedidos_016 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    producto_id INT NOT NULL,
    cliente_id INT NOT NULL,
    cantidad INT NOT NULL CHECK(cantidad > 0),
    FOREIGN KEY (producto_id) REFERENCES productos_016(id),
    FOREIGN KEY (cliente_id) REFERENCES clientes_016(id)
);