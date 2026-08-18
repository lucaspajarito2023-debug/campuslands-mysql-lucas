# 🍔 Ejercicio 016 - INNER JOIN para Restaurante de Comida Urbana

## 📌 Descripción del Proyecto
Este proyecto implementa relaciones avanzadas de consulta mediante **INNER JOIN** en MySQL sobre la base de datos de un **Restaurante de Comida Urbana**. Permite cruzar información entre categorías, menú, clientes y el detalle de los pedidos consumidos.

---

## 🏗️ Estructura de la Base de Datos

La base de datos `intermedio_comida_urbana` se compone de 4 tablas relacionales:

* **`categorias_016`**: Almacena las distintas clasificaciones del menú.
* **`productos_016`**: Contiene la lista de platillos vinculados a su categoría (`FK`) y su precio (`CHECK(precio > 0)`).
* **`clientes_016`**: Almacena los datos de contacto de los clientes.
* **`detalle_pedidos_016`**: Registra los items ordenados, vinculando cliente, producto (`FK`) y cantidad solicitada (`CHECK(cantidad > 0)`).

---

## 🚀 Uso de INNER JOIN

El script de **DQL** utiliza combinaciones de tablas para resolver necesidades de negocio comunes:
* **Relaciones Simples (2 Tablas):** Mapeo de productos con su respectiva categoría.
* **Relaciones Intermedias (3 Tablas):** Vinculación de pedidos con clientes y precios de productos para cálculo de subtotales.
* **Relaciones Complejas (4 Tablas):** Cruce total de entidades para reportes consolidados por categoría o consumidor.

---

## 🛠️ Guía de Ejecución

1. Ejecuta el script **DDL** para crear el esquema e integridad referencial.
2. Ejecuta el script **DML** para cargar los registros de prueba.
3. Corre las consultas **DQL** para analizar los resultados interrelacionados.