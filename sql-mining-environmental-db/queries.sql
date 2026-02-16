SELECT c.nombre,
       COUNT(i.id_incidente) AS total_incidentes
FROM COMUNIDAD c
JOIN INCIDENTE i 
     ON c.id_comunidad = i.id_comunidad
GROUP BY c.nombre
ORDER BY total_incidentes DESC;


SELECT p.nombre_parametro,
       COUNT(*) AS veces_incumplido
FROM RESULTADO_MONITOREO r
JOIN PARAMETRO p 
     ON r.id_parametro = p.id_parametro
WHERE r.cumple_norma = 'NO'
GROUP BY p.nombre_parametro
ORDER BY veces_incumplido DESC;

SELECT c.nombre,
       COUNT(co.id_compromiso) AS total_compromisos,
       SUM(CASE WHEN co.estado = 'Vencido' THEN 1 ELSE 0 END) AS compromisos_vencidos
FROM COMUNIDAD c
JOIN COMPROMISO co
     ON c.id_comunidad = co.id_comunidad
GROUP BY c.nombre;
