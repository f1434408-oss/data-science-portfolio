INSERT INTO COMUNIDAD VALUES
(1, 'Santa Rosa', 'Yanacancha', 'Pasco', 'Alto'),
(2, 'El Progreso', 'Simón Bolívar', 'Pasco', 'Medio'),
(3, 'Nueva Esperanza', 'Huayllay', 'Pasco', 'Bajo'),
(4, 'San Miguel', 'Chaupimarca', 'Pasco', 'Medio'),
(5, 'Villa Andina', 'Tinyahuarco', 'Pasco', 'Alto');

INSERT INTO PARAMETRO VALUES
(1, 'pH', 'pH', 8.50),
(2, 'Metales Pesados', 'mg/L', 0.05),
(3, 'PM10', 'ug/m3', 50.00),
(4, 'Arsénico', 'mg/L', 0.01),
(5, 'Ruido', 'dB', 70.00);

INSERT INTO MONITOREO VALUES
(1, '2024-01-15', 'Agua', 1),
(2, '2024-02-10', 'Aire', 2),
(3, '2024-03-05', 'Suelo', 1),
(4, '2024-03-20', 'Agua', 3),
(5, '2024-04-02', 'Aire', 4);

INSERT INTO COMPROMISO VALUES
(1, 'Planta de tratamiento', '2023-06-01', '2024-06-01', 'Pendiente', 1),
(2, 'Capacitación ambiental', '2023-08-01', '2024-01-30', 'Cumplido', 2),
(3, 'Reforestación zona norte', '2023-09-10', '2024-03-10', 'Vencido', 3),
(4, 'Monitoreo participativo', '2023-10-01', '2024-05-01', 'Pendiente', 4),
(5, 'Programa de salud', '2023-07-15', '2024-02-15', 'Vencido', 5);

INSERT INTO INCIDENTE VALUES
(1, '2024-01-20', 'Derrame menor', 'Bajo', 1),
(2, '2024-02-18', 'Emisión polvo', 'Medio', 2),
(3, '2024-03-12', 'Contaminación agua', 'Alto', 1),
(4, '2024-03-28', 'Ruido excesivo', 'Bajo', 3),
(5, '2024-04-05', 'Fuga química', 'Alto', 5);

INSERT INTO RESULTADO_MONITOREO VALUES
(1, 1, 1, 8.20, 'SI'),
(2, 1, 2, 0.08, 'NO'),
(3, 2, 3, 45.00, 'SI'),
(4, 3, 4, 0.02, 'NO'),
(5, 4, 1, 7.90, 'SI');
