USE campuslands_mysql;

/*=========================================================
  CONSULTA 1
  Ranking de victorias
=========================================================*/
SELECT
    nombre_peleador AS peleador,
    categoria,
    victorias
FROM peleadores_kb009
ORDER BY victorias DESC
LIMIT 5;

/*=========================================================
  CONSULTA 2
  Peleadores activos
=========================================================*/
SELECT
    nombre_peleador AS peleador,
    categoria,
    edad
FROM peleadores_kb009
WHERE estado = 'Activo'
ORDER BY nombre_peleador;

/*=========================================================
  CONSULTA 3
  Promedio de victorias por categoría
=========================================================*/
SELECT
    categoria,
    ROUND(AVG(victorias),2) AS promedio_victorias
FROM peleadores_kb009
GROUP BY categoria
ORDER BY promedio_victorias DESC;

/*=========================================================
  CONSULTA 4
  Peleadores y gimnasio
=========================================================*/
SELECT
    p.nombre_peleador AS peleador,
    g.nombre_gimnasio AS gimnasio,
    g.ciudad
FROM peleadores_kb009 p
INNER JOIN gimnasios_kb009 g
    ON p.id_gimnasio = g.id_gimnasio
ORDER BY g.nombre_gimnasio, peleador;

/*=========================================================
  CONSULTA 5
  Total de peleadores por gimnasio
=========================================================*/
SELECT
    g.nombre_gimnasio AS gimnasio,
    COUNT(p.id_peleador) AS total_peleadores
FROM gimnasios_kb009 g
LEFT JOIN peleadores_kb009 p
    ON g.id_gimnasio = p.id_gimnasio
GROUP BY g.nombre_gimnasio
ORDER BY total_peleadores DESC;

/*=========================================================
  CONSULTA 6
  Porcentaje de victorias
=========================================================*/
SELECT
    nombre_peleador AS peleador,
    victorias,
    derrotas,
    ROUND((victorias / (victorias + derrotas)) * 100,2) AS porcentaje_victorias
FROM peleadores_kb009
WHERE (victorias + derrotas) > 0
ORDER BY porcentaje_victorias DESC;