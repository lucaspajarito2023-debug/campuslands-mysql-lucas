USE campuslands_mysql;

/*=========================================================
  CONSULTA 1
  Total de corredores inscritos
=========================================================*/
SELECT
    COUNT(*) AS total_corredores
FROM corredores_urbanos_010
WHERE estado = 'Inscrito';

/*=========================================================
  CONSULTA 2
  Total recaudado por inscripciones
=========================================================*/
SELECT
    SUM(cuota_inscripcion) AS total_recaudado
FROM corredores_urbanos_010
WHERE estado = 'Inscrito';

/*=========================================================
  CONSULTA 3
  Corredores por categoría
=========================================================*/
SELECT
    categoria,
    COUNT(*) AS total_categoria
FROM corredores_urbanos_010
GROUP BY categoria
ORDER BY total_categoria DESC;

/*=========================================================
  CONSULTA 4
  Kilómetros totales recorridos
=========================================================*/
SELECT
    SUM(kilometros_recorridos) AS kilometros_totales
FROM corredores_urbanos_010
WHERE estado = 'Inscrito';

/*=========================================================
  CONSULTA 5
  Recaudación por categoría
=========================================================*/
SELECT
    categoria,
    SUM(cuota_inscripcion) AS recaudacion_categoria
FROM corredores_urbanos_010
WHERE estado = 'Inscrito'
GROUP BY categoria
ORDER BY recaudacion_categoria DESC;

/*=========================================================
  CONSULTA 6
  Total de corredores retirados
=========================================================*/
SELECT
    COUNT(*) AS total_retirados
FROM corredores_urbanos_010
WHERE estado = 'Retirado';