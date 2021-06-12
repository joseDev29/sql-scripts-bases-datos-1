-- DROP ZONE
DROP TABLE CONTRATOS;
DROP TABLE PARTICIPACIONES;
DROP TABLE REEMPLAZOS;
DROP TABLE REINAS;
DROP TABLE REINADOS;
DROP TABLE FIRMAS;
DROP TABLE PATROCINADORES;
DROP TABLE CIUDADES;


--CREATE TABLES

CREATE TABLE CIUDADES(
    codigo NUMBER(10),
    nombre VARCHAR2(30),
    departamento VARCHAR2(15),
    
    CONSTRAINT PK_CIUDADES
        PRIMARY KEY (codigo)
);


CREATE TABLE PATROCINADORES(
    cedula NUMBER(10),
    nombre VARCHAR2(30),
    direccion VARCHAR2(20),
    
    CONSTRAINT PK_PATROCINADORES
        PRIMARY KEY (cedula)
);

CREATE TABLE FIRMAS(
    codigo NUMBER(10),
    nombre VARCHAR2(30),
    tipo VARCHAR2(15),
    
    CONSTRAINT PK_FIRMAS
        PRIMARY KEY (codigo)
);

CREATE TABLE REINADOS(
    nombre VARCHAR2(20),
    fecha DATE,
    intervalo VARCHAR2(20),
    codigo_ciudad NUMBER(10),
    
    CONSTRAINT PK_REINADOS
        PRIMARY KEY (nombre, fecha, intervalo),
        
    CONSTRAINT FK_REINADOS_CIUDAD
        FOREIGN KEY (codigo_ciudad)
            REFERENCES CIUDADES
);

CREATE TABLE REINAS(
    cedula NUMBER(10),
    nombre VARCHAR2(30),
    apellido VARCHAR2(30),
    fecha_nacimiento DATE,
    cintura NUMBER(2),
    busto NUMBER(2),
    derriere NUMBER(2),
    fecha_inicio DATE,
    codigo_ciudad NUMBER(10),
    cedula_patrocinador NUMBER(10),
    reemplazo NUMBER(10),
    
    CONSTRAINT PK_REINAS
        PRIMARY KEY (cedula),
            
    CONSTRAINT FK_REINAS_PATROCINADOR
            FOREIGN KEY (cedula_patrocinador)
                REFERENCES PATROCINADORES,
                
    CONSTRAINT FK_REINAS_CIUDAD
            FOREIGN KEY (codigo_ciudad)
                REFERENCES PATROCINADORES
);

CREATE TABLE REEMPLAZOS(
    fecha_renuncia DATE,
    fecha_reemplazo DATE,
    motivo VARCHAR2(15),
    cedula_reemplazo NUMBER(10),
    cedula_reemplazada NUMBER(10) UNIQUE,
    
    CONSTRAINT PK_REEMPLAZOS
        PRIMARY KEY (cedula_reemplazo),
            
    CONSTRAINT FK_REEMPLAZO_REINA
            FOREIGN KEY (cedula_reemplazo)
                REFERENCES REINAS,
    
    CONSTRAINT FK_REEMPLAZADA_REINA
            FOREIGN KEY (cedula_reemplazada)
                REFERENCES REINAS
);

CREATE TABLE PARTICIPACIONES(
    puesto NUMBER(2),
    premios VARCHAR2(30),
    motivo VARCHAR2(15),
    cedula_reina NUMBER(10),
    codigo_ciudad NUMBER(10),
    nombre_reinado VARCHAR2(20),
    fecha_reinado DATE,
    intervalo_reinado VARCHAR2(20),
    
    CONSTRAINT PK_PARTICIPACIONES
        PRIMARY KEY (cedula_reina , codigo_ciudad , nombre_reinado),
            
    CONSTRAINT FK_PARTICIPACIONES_REINA
            FOREIGN KEY (cedula_reina)
                REFERENCES REINAS,
    
    CONSTRAINT FK_PARTICIPACIONES_REINADO
            FOREIGN KEY (nombre_reinado , fecha_reinado , intervalo_reinado)
                REFERENCES REINADOS,
                
    CONSTRAINT FK_PARTICIPACIONES_CIUDADES
            FOREIGN KEY (codigo_ciudad)
                REFERENCES CIUDADES
                
);

CREATE TABLE CONTRATOS(
    tipo VARCHAR2(15),
    tiempo VARCHAR2(15),
    valor NUMBER(15),
    fecha DATE,
    caducicad DATE,
    cedula_reina NUMBER(10),
    codigo_firma NUMBER(10),

    CONSTRAINT PK_CONTRATOS
        PRIMARY KEY (cedula_reina , codigo_firma , fecha),
            
    CONSTRAINT FK_CONTRATOS_REINA
            FOREIGN KEY (cedula_reina)
                REFERENCES REINAS,
    
    CONSTRAINT FK_CONTRATOS_FIRMA
            FOREIGN KEY (codigo_firma)
                REFERENCES FIRMAS
                
);
