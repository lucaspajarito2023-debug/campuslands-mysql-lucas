# 🍔 Ejercicio 016 - CREATE TABLE para Restaurante de Comida Urbana

## 📌 Descripción del Proyecto
Este proyecto implementa el diseño, la creación e inserción inicial de datos para el módulo de ventas de un **Restaurante de Comida Urbana** en MySQL. Permite organizar categorías del menú, platillos, registros de clientes y consumos realizados.

---

## 🏗️ Estructura de la Base de Datos

La base de datos `basico_comida_urbana` se compone de 4 tablas relacionales:

* **`categorias_016`**: Define los tipos de comida (Hamburguesas, Tacos, Bebidas, etc.).
* **`productos_016`**: Almacena los platillos del menú vinculados a su categoría (`FK`) y su precio con validación `CHECK(precio > 0)`.
* **`clientes_016`**: Almacena la información de contacto básica de los consumidores.
* **`detalle_pedidos_016`**: Relaciona el producto consumido con el cliente (`FK`) y la cantidad solicitada con validación `CHECK(cantidad > 0)`.

---

## 🚀 Guía de Ejecución

1. Ejecuta el script **DDL** para estructurar la base de datos `basico_comida_urbana`.
2. Ejecuta el script **DML** para cargar la información de prueba.
3. Corre las consultas **DQL** para verificar los indicadores y resultados del menú.