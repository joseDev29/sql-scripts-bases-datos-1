--DROP ZONE


CREATE TABLE EMPRESAS(
    nombre VARCHAR2(35),
    
    CONSTRAINT PK_EMPRESAS
    PRIMARY KEY(nombre)
);


CREATE TABLE ZONAS(
    nombre VARCHAR2(35),
    estado NUMBER(2),
    nombreEmpresa VARCHAR2(35),
    
    CONSTRAINT PK_ZONAS
    PRIMARY KEY(nombre),
    
    CONSTRAINT FK_ZONAS
    FOREIGN KEY(nombreEmpresa) REFERENCES EMPRESAS
);


CREATE TABLE BARRIOS(
    codigo NUMBER(10),
    numero_usuarios NUMBER(6),
    nombreZona VARCHAR2(35),
    
    CONSTRAINT PK_BARRIOS
    PRIMARY KEY(codigo),
    
    CONSTRAINT FK_BARRIOS
    FOREIGN KEY(nombreZona) REFERENCES ZONAS
    
);




CREATE TABLE SERVICIOS(
    codigo NUMBER(10),
    nombre VARCHAR2(35),
    numero_asignados NUMBER(6),
    barrio NUMBER(10),
    
    
    CONSTRAINT PK_BARRIOS
    PRIMARY KEY(codigo),
    
    
    CONSTRAINT FK_BARRIOS_SERVICIOS
    FOREIGN KEY(barrio) REFERENCES BARRIOS
);

CREATE TABLE BARREDORAS(
    codigo NUMBER(10),
    tipo VARCHAR2(35),
    fecha_expiracion DATE,
    velocidad_promedio NUMBER(3),
    
    CONSTRAINT PK_BARREDORAS
    PRIMARY KEY(codigo)
    
    
);

CREATE TABLE CAMIONES(
    codigo NUMBER(10),
    tipo VARCHAR2(35),
    cilindraje NUMBER(5),
    peso NUMBER(5),
    numero_llantas NUMBER(2),
    
    CONSTRAINT PK_CAMIONES
    PRIMARY KEY(codigo)
);

CREATE TABLE VEHICULOS(
    matricula VARCHAR(7),
    numero_chasis NUMBER(10),
    color_unico VARCHAR2(15),
    documento NUMBER(10),
    tipoVehiculo NUMBER(10),
    servicio NUMBER(10),
    
    CONSTRAINT PK_VEHICULOS
    PRIMARY KEY(matricula),
    
    CONSTRAINT FK_CAMIONES_VEHICULO
    FOREIGN KEY(tipoVehiculo) REFERENCES CAMIONES,
    
    
    CONSTRAINT FK_BARREDORAS_VEHICULO
    FOREIGN KEY(tipoVehiculo) REFERENCES BARREDORAS,
    
    CONSTRAINT FK_SERVICIO_VEHICULO
    FOREIGN KEY(servicio) REFERENCES SERVICIOS
    
    
);

CREATE TABLE SUPERVISORES(
    codigo NUMBER(10),
    matricula_vehiculo NUMBER(7),
    
    
    CONSTRAINT PK_SUPERVISORES
    PRIMARY KEY(codigo),
    
    CONSTRAINT FK_VEHICULO_SUPERVISORES
        FOREIGN KEY(matricula_vehiculo) REFERENCES VEHICULOS
);


CREATE TABLE FRECUENCIAS(
    codigo NUMBER(10),
    horario1 VARCHAR2(15),
    horario2 VARCHAR2(15),
    horario3 VARCHAR2(15),
    servicio NUMBER(10),
    
    
    CONSTRAINT PK_FRECUENCIA
    PRIMARY KEY(codigo),
    
    
    CONSTRAINT FK_SERVICIO_FRECUENCIAS
    FOREIGN KEY(servicio) REFERENCES SERVICIOS
);

CREATE TABLE RUTAS(
    codigo NUMBER(10),
    hora_inicio NUMBER(4),
    hora_fin NUMBER(4),
    observaciones VARCHAR2(70),
    conductor NUMBER(10),
    frecuencia NUMBER(10),
    vahiculo NUMBER(7),
    
    CONSTRAINT PK_RUTAS
    PRIMARY KEY(codigo),
    
    CONSTRAINT FK_FRECUENCIA_RUTAS
    FOREIGN KEY(frecuencia) REFERENCES FRECUENCIAS,
    
    CONSTRAINT FK_VEHICULO_RUTAS
    FOREIGN KEY(vehiculo) REFERENCES VEHICULOS
);



CREATE TABLE OPERARIOS(
    codigo NUMBER(10),
    dotacion VARCHAR2(35),
    edad NUMBER(2),
    peso NUMBER(3),
    obeservaciones VARCHAR2(70),
    fecha_ingreso DATE,
    fecha_retiro DATE,
    codigo_supervisor NUMBER(10),
    vehiculo NUMBER(7),
    ruta NUMBER(10),
    servicio NUMBER(10),
    
    CONSTRAINT PK_OPERARIOS
    PRIMARY KEY(codigo),
    
    CONSTRAINT FK_OPERARIOS_SERVICIO
        FOREIGN KEY(servicio) REFERENCES SERVICIOS,
    
    CONSTRAINT FK_OPERARIOS_SUPERVISOR
        FOREIGN KEY(codigo_supervisor) REFERENCES SUPERVISORES,
        
    CONSTRAINT FK_OPERARIOS_VEHICULO
        FOREIGN KEY(vehiculo) REFERENCES VEHICULOS,
        
    CONSTRAINT FK_OPERARIOS_RUTA
        FOREIGN KEY(ruta) REFERENCES RUTAS
    
);

CREATE TABLE AUXILIOS(
    codigo NUMBER(10),
    hora_salida NUMBER(4),
    hora_llegada NUMBER(4),
    hora_solucion NUMBER(4),
    hora_vuelta NUMBER(4),
    tipo VARCHAR2(35),
    desperfecto VARCHAR2(35),
    razon VARCHAR2(35),
    observaciones VARCHAR2(70),
    rutas NUMBER(10),
    vehiculo NUMBER(7),
    
    CONSTRAINT PK_AUXILIOS
    PRIMARY KEY(codigo),
    
    CONSTRAINT FK_RUTAS_AUXILIOS
    FOREIGN KEY(rutas) REFERENCES RUTAS,
    
    CONSTRAINT FK_VEHICULO_AUXILIOS
    FOREIGN KEY(vehiculo) REFERENCES VEHICULOS
);

CREATE TABLE QUEJAS(
    codigo NUMBER(10),
    hora NUMBER(4),
    cedula_usuario NUMBER(10),
    nombre_usuario VARCHAR2(35),
    tipo VARCHAR2(20),
    estado NUMBER(2),
    servicio NUMBER(10),
    
    CONSTRAINT PK_QUEJAS
    PRIMARY KEY(codigo),
    
    
    CONSTRAINT PK_QUEJAS
    FOREIGN KEY(codigo) REFERENCES QUEJAS,
    
    CONSTRAINT FK_SERVICIO_QUEJAS
    FOREIGN KEY(servicio) REFERENCES SERVICIOS
);







