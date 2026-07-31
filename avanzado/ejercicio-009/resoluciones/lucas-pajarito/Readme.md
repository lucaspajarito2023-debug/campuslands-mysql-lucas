# Ejercicio 009 (avanzado) - lucas-pajarito

**Temática:** kickboxing.

La solución implementa una tabla llamada **`eventos_kickboxing_lock09`** para gestionar eventos deportivos y sus cupos disponibles. El objetivo principal del ejercicio es demostrar el uso de **bloqueos pesimistas en InnoDB** mediante `SELECT ... FOR UPDATE`, evitando que dos transacciones modifiquen simultáneamente el mismo registro.

---

# 1. Objetivo del ejercicio

Practicar mecanismos de concurrencia en MySQL:

* Bloqueos de fila con `FOR UPDATE`.
* Transacciones explícitas.
* Integridad de datos durante reservas de cupos.
* Configuración de espera de bloqueos.
* Verificación del nivel de aislamiento.

El escenario simula un sistema de inscripción a eventos donde varios usuarios podrían intentar reservar el mismo cupo al mismo tiempo.

---
 
