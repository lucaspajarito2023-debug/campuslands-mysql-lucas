USE campuslands_mysql;

/*=========================================================
  CONSULTA 1
  Inscripciones confirmadas
=========================================================*/
SELECT
    numero_dorsal AS dorsal,
    nombre_corredor AS corredor,
    categoria
FROM inscripciones_carrera_u010
WHERE estado = 'Confirmada'
ORDER BY corredor;

/*=========================================================
  CONSULTA 2
  Total de inscritos por categoría
=========================================================*/
SELECT
    categoria,
    COUNT(*) AS total_inscritos
FROM inscripciones_carrera_u010
GROUP BY categoria
ORDER BY total_inscritos DESC;

/*=========================================================
  CONSULTA 3
  Recaudación confirmada
=========================================================*/
SELECT
    SUM(cuota_inscripcion) AS total_recaudado
FROM inscripciones_carrera_u010
WHERE estado = 'Confirmada';

/*=========================================================
  CONSULTA 4
  Participantes por ciudad
=========================================================*/
SELECT
    ciudad,
    COUNT(*) AS total_participantes
FROM inscripciones_carrera_u010
GROUP BY ciudad
ORDER BY total_participantes DESC;

/*=========================================================
  CONSULTA 5
  Corredores mayores de 25 años
=========================================================*/
SELECT
    nombre_corredor AS corredor,
    edad,
    categoria
FROM inscripciones_carrera_u010
WHERE edad > 25
ORDER BY edad DESC;

/*=========================================================
  CONSULTA 6
  Dorsales y correos registrados
=========================================================*/
SELECT
    numero_dorsal,
    correo_corredor
FROM inscripciones_carrera_u010
ORDER BY numero_dorsal;