USE campuslands_mysql;

/*=========================================================
  CONSULTA 1
  Eventos abiertos con cupos disponibles
=========================================================*/
SELECT
    nombre_evento AS evento,
    ciudad,
    cupos_disponibles
FROM eventos_kickboxing_lock09
WHERE estado = 'Abierto'
ORDER BY cupos_disponibles ASC;

/*=========================================================
  CONSULTA 2
  Simulación de bloqueo pesimista
=========================================================*/
START TRANSACTION;

SELECT
    id_evento,
    nombre_evento,
    cupos_disponibles
FROM eventos_kickboxing_lock09
WHERE nombre_evento = 'Copa Kick 2026'
FOR UPDATE;

COMMIT;

/*=========================================================
  CONSULTA 3
  Configuración de espera de bloqueos
=========================================================*/
SHOW VARIABLES LIKE 'innodb_lock_wait_timeout';

/*=========================================================
  CONSULTA 4
  Nivel de aislamiento de la sesión
=========================================================*/
SELECT @@transaction_isolation AS nivel_aislamiento;

/*=========================================================
  CONSULTA 5
  Total de cupos disponibles
=========================================================*/
SELECT
    SUM(cupos_disponibles) AS total_cupos
FROM eventos_kickboxing_lock09;

/*=========================================================
  CONSULTA 6
  Evento con más cupos disponibles
=========================================================*/
SELECT
    nombre_evento AS evento,
    cupos_disponibles
FROM eventos_kickboxing_lock09
ORDER BY cupos_disponibles DESC
LIMIT 1;