## 📌 Descripción de la Solución
Este repositorio contiene la solución completa para el **Ejercicio 010**, enfocado en la aplicación de funciones de agregación (`COUNT` y `SUM`), agrupamientos (`GROUP BY`), filtrado de condiciones y funciones estadísticas en MySQL. La temática implementada gira en torno al **gestión y análisis de resultados de carreras urbanas** (maratones, distancias de 5k/10k, trail running, etc.).

La solución está construida siguiendo las mejores prácticas de desarrollo SQL: separación estricta de responsabilidades en scripts DDL, DML y DQL, convenciones de nombres consistentes, tipos de datos apropiados (uso de `DECIMAL` para montos/cuotas y tiempos precisos) y restricciones de integridad.

---

## 📁 Estructura del Proyecto

```text
basico/ejercicio-010/resoluciones/tu-nombre-apellido/
├── README.md           # Explicación técnica y guía de ejecución
├── ddl/
│   └── schema.sql      # Definición de la estructura de la base de datos (DDL)
├── dml/
│   └── inserts.sql     # Carga de datos realistas y casos límite (DML)
└── dql/
    └── consultas.sql   # Consultas de análisis de negocio con COUNT y SUM (DQL)