## 📌 Descripción de la Solución
Este repositorio contiene la solución completa para el **Ejercicio 010 (Nivel Avanzado Inicial)**. El objetivo del ejercicio es gestionar la persistencia, integridad y estrategias de **backup lógico** en MySQL para el módulo de datos de un sistema de **carreras urbanas** (maratones, 10K, trail running, etc.).

La solución no solo organiza el diseño relacional y las consultas analíticas de negocio, sino que también implementa y documenta las estrategias necesarias para realizar respaldos lógicos (`mysqldump`), exportación estructurada y restauración de datos sin pérdida de integridad.

---

## 📁 Estructura del Proyecto

El desarrollo está organizado respetando la arquitectura por responsabilidades requerida:

```text
avanzado/ejercicio-010/resoluciones/tu-nombre-apellido/
├── README.md           # Documentación técnica, estrategia de backup y guía de ejecución
├── ddl/
│   └── schema.sql      # Definición DDL de estructuras, restricciones e índices
├── dml/
│   └── inserts.sql     # Poblado DML con datos realistas y casos de prueba
└── dql/
    └── consultas.sql   # Consultas de análisis (DQL) e indicadores de negocio