
## 📌 Resumen de la Solución
Este repositorio contiene la resolución técnica para el **Ejercicio 010**, enfocada en la gestión de inscripciones para un evento de **carreras urbanas** utilizando MySQL. 

La solución implementa una estructura organizada que abarca desde la definición de la base de datos hasta la consulta de indicadores clave de negocio (KPIs), tales como el conteo de participantes agrupados por distintas dimensiones (`COUNT`) y la recaudación total de fondos por concepto de cuotas de inscripción (`SUM`).

---

## 📁 Estructura del Proyecto

El código está estructurado respetando la separación de responsabilidades y las buenas prácticas requeridas:

```text
basico/ejercicio-010/resoluciones/tu-nombre-apellido/
├── README.md           # Explicación de la solución y guía de ejecución
├── ddl/
│   └── schema.sql      # Definición de la tabla inscripciones_carrera_u010
├── dml/
│   └── inserts.sql     # Inserción de datos de prueba de participantes
└── dql/
    └── consultas.sql   # Consultas de consulta e indicadores (DQL)