USE campuslands_mysql;

/*=========================================================
  CONSULTA 1
  Peleadores con academia
=========================================================*/
SELECT
    p.nombre_peleador AS peleador,
    a.nombre_academia AS academia,
    a.ciudad
FROM peleadores_kbx_fk09 p
INNER JOIN academias_kbx_fk09 a
    ON p.id_academia = a.id_academia
ORDER BY academia, peleador;

/*=========================================================
  CONSULTA 2
  Ranking de victorias
=========================================================*/
SELECT
    nombre_peleador AS peleador,
    categoria,
    victorias
FROM peleadores_kbx_fk09
ORDER BY victorias DESC
LIMIT 5;

/*=========================================================
  CONSULTA 3
  Historial de combates
=========================================================*/
SELECT
    c.id_combate,
    c.fecha_combate,
    l.nombre_peleador AS local,
    v.nombre_peleador AS visitante,
    g.nombre_peleador AS ganador,
    c.metodo_victoria
FROM combates_kbx_fk09 c
INNER JOIN peleadores_kbx_fk09 l
    ON c.id_local = l.id_peleador
INNER JOIN peleadores_kbx_fk09 v
    ON c.id_visitante = v.id_peleador
INNER JOIN peleadores_kbx_fk09 g
    ON c.id_ganador = g.id_peleador
ORDER BY c.fecha_combate;

/*=========================================================
  CONSULTA 4
  Total de peleadores por academia
=========================================================*/
SELECT
    a.nombre_academia AS academia,
    COUNT(p.id_peleador) AS total_peleadores
FROM academias_kbx_fk09 a
LEFT JOIN peleadores_kbx_fk09 p
    ON a.id_academia = p.id_academia
GROUP BY a.nombre_academia
ORDER BY total_peleadores DESC;

/*=========================================================
  CONSULTA 5
  Promedio de victorias por categoría
=========================================================*/
SELECT
    categoria,
    ROUND(AVG(victorias),2) AS promedio_victorias
FROM peleadores_kbx_fk09
GROUP BY categoria
ORDER BY promedio_victorias DESC;

/*=========================================================
  CONSULTA 6
  Peleadores suspendidos
=========================================================*/
SELECT
    nombre_peleador AS peleador,
    categoria,
    victorias,
    derrotas
FROM peleadores_kbx_fk09
WHERE estado = 'Suspendido';