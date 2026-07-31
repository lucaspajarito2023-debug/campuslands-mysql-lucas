USE campuslands_mysql;

/*=========================================================
  CONSULTA 1
  Total de eventos registrados
=========================================================*/
SELECT
    COUNT(*) AS total_eventos
FROM eventos_carreras_backup10;

/*=========================================================
  CONSULTA 2
  Total de cupos disponibles
=========================================================*/
SELECT
    SUM(cupos_disponibles) AS total_cupos
FROM eventos_carreras_backup10;

/*=========================================================
  CONSULTA 3
  Eventos abiertos
=========================================================*/
SELECT
    nombre_evento AS evento,
    ciudad,
    cupos_disponibles
FROM eventos_carreras_backup10
WHERE estado = 'Abierto'
ORDER BY cupos_disponibles DESC;

/*=========================================================
  CONSULTA 4
  Recaudación potencial por evento
=========================================================*/
SELECT
    nombre_evento AS evento,
    (cupos_disponibles * cuota_inscripcion) AS ingreso_potencial
FROM eventos_carreras_backup10
ORDER BY ingreso_potencial DESC;

/*=========================================================
  CONSULTA 5
  Cupos por ciudad
=========================================================*/
SELECT
    ciudad,
    SUM(cupos_disponibles) AS cupos_ciudad
FROM eventos_carreras_backup10
GROUP BY ciudad
ORDER BY cupos_ciudad DESC;

/*=========================================================
  CONSULTA 6
  Eventos cerrados
=========================================================*/
SELECT
    nombre_evento AS evento,
    fecha_evento
FROM eventos_carreras_backup10
WHERE estado = 'Cerrado';