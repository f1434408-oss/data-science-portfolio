CREATE TABLE COMUNIDAD (
    id_comunidad INTEGER PRIMARY KEY,
    nombre VARCHAR(50),
    distrito VARCHAR(40),
    provincia VARCHAR(40),
    nivel_riesgo_social VARCHAR(10)
);

CREATE TABLE PARAMETRO (
    id_parametro INTEGER PRIMARY KEY,
    nombre_parametro VARCHAR(40),
    unidad_parametro VARCHAR(10),
    limite_permitido DECIMAL(8,2)
);

CREATE TABLE MONITOREO (
    id_monitoreo INTEGER PRIMARY KEY,
    fecha_monitoreo DATE,
    tipo_monitoreo VARCHAR(15),
    id_comunidad INTEGER,
    FOREIGN KEY (id_comunidad) 
        REFERENCES COMUNIDAD(id_comunidad)
);

CREATE TABLE COMPROMISO (
    id_compromiso INTEGER PRIMARY KEY,
    descripcion VARCHAR(120),
    fecha_inicio DATE,
    fecha_vencimiento DATE,
    estado VARCHAR(15),
    id_comunidad INTEGER,
    FOREIGN KEY (id_comunidad) 
        REFERENCES COMUNIDAD(id_comunidad)
);
CREATE TABLE INCIDENTE (
    id_incidente INTEGER PRIMARY KEY,
    fecha_incidente DATE,
    tipo_incidente VARCHAR(50),
    nivel_gravedad VARCHAR(10),
    id_comunidad INTEGER,
    FOREIGN KEY (id_comunidad) 
        REFERENCES COMUNIDAD(id_comunidad)
);

CREATE TABLE RESULTADO_MONITOREO (
    id_resultado INTEGER PRIMARY KEY,
    id_monitoreo INTEGER,
    id_parametro INTEGER,
    valor_medido DECIMAL(8,2),
    cumple_norma VARCHAR(2),
    FOREIGN KEY (id_monitoreo) 
        REFERENCES MONITOREO(id_monitoreo),
    FOREIGN KEY (id_parametro) 
        REFERENCES PARAMETRO(id_parametro)
);
