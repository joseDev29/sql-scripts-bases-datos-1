
--DROP TABLES ZONE
DROP TABLE TOROS;
DROP TABLE GANADERIAS;
DROP TABLE ACTUAN;
DROP TABLE TOREROS;
DROP TABLE APODERADOS;
DROP TABLE CORRIDAS;
DROP TABLE PLAZAS;


--DDL MODEL


CREATE TABLE PLAZAS(
    
    nombre VARCHAR2(35),
    localidad VARCHAR(35) NOT NULL,
    direccion VARCHAR(80) NOT NULL,
    aforo INTEGER NOT NULL,
    
    CONSTRAINT PK_PLAZAS 
        PRIMARY KEY(nombre)

);


CREATE TABLE CORRIDAS(
    
    orden NUMBER(3),
    feria VARCHAR2(20),
    anio INTEGER,
    nombre VARCHAR2(35),
    
    CONSTRAINT PK_CORRIDAS 
        PRIMARY KEY(orden, feria, anio),
    
    CONSTRAINT FK_CORRIDAS_PLAZA 
        FOREIGN KEY (nombre) 
        REFERENCES PLAZAS

);


CREATE TABLE APODERADOS (
    
    dni NUMBER(13),
    nombre VARCHAR2(35) NOT NULL,
    direccion VARCHAR2(35),
    telefono NUMBER(12),
    
    CONSTRAINT PK_APODERADOS 
        PRIMARY KEY(dni)

);


CREATE TABLE TOREROS (

    dni NUMBER(13),
    nombre VARCHAR2(35),
    apodo VARCHAR2(35),
    dni_apoderado NUMBER(13), 
    
    CONSTRAINT PK_TOREROS PRIMARY KEY(dni),
    
    CONSTRAINT FK_TOREROS_APODERADO 
        FOREIGN KEY(dni_apoderado) 
        REFERENCES APODERADOS

);


CREATE TABLE ACTUAN(

orden_corrida NUMBER(3),
feria_corrida VARCHAR2(20),
anio_corrida INTEGER,
dni_torero NUMBER(13),
orejas INTEGER,
rabos INTEGER,
puerta_grande VARCHAR(1) NOT NULL,

CONSTRAINT FK_CORRIDAS_ACTUAN 
    FOREIGN KEY(orden_corrida, feria_corrida, anio_corrida) 
    REFERENCES CORRIDAS,
    
CONSTRAINT FK_TOREROS_ACTUAN 
    FOREIGN KEY(dni_torero)
    REFERENCES TOREROS

);


CREATE TABLE GANADERIAS(

codigo NUMBER(13),
localidad VARCHAR2(35),
antiguedad INTEGER,

CONSTRAINT PK_GANADERIAS PRIMARY KEY(codigo)

);


CREATE TABLE TOROS(

numero_orden NUMBER(3),
anio INTEGER,
nombre VARCHAR2(35),
color VARCHAR2(35),
codigo_ganaderia NUMBER(13),
orden_corrida NUMBER(3),
feria_corrida VARCHAR2(20),
anio_corrida INTEGER,

CONSTRAINT PK_TOROS 
    PRIMARY KEY(numero_orden),

CONSTRAINT FK_GANADERIA_TOROS 
    FOREIGN KEY(codigo_ganaderia) 
    REFERENCES GANADERIAS,

CONSTRAINT FK_CORRIDA_TOROS
    FOREIGN KEY(orden_corrida, feria_corrida, anio_corrida)
    REFERENCES CORRIDAS

);


ALTER TABLE TOREROS
    ADD(
        dni_padrino NUMBER(13),
        fecha_alternativa DATE
    );

ALTER TABLE TOREROS
    ADD(
        CONSTRAINT FK_PADRINO_TOREROS 
            FOREIGN KEY(dni_padrino) REFERENCES TOREROS(dni)    
    );


ALTER TABLE PLAZAS
    ADD(
        CONSTRAINT VALIDACION_DIRECCION_AFORO 
        UNIQUE(aforo, direccion)
    );
    
ALTER TABLE TOROS
    ADD( 
        CONSTRAINT CHECK_COLOR 
            CHECK(color IN ('Blanco', 'Negro', 'Bicolor')) 
    );
    

ALTER TABLE PLAZAS
    ADD( 
        CONSTRAINT CHECK_AFORO 
            CHECK(aforo<20) 
    );
    
    
ALTER TABLE ACTUAN
    ADD( 
        CONSTRAINT CHECK_OREJAS 
            CHECK(orejas>0 AND orejas<4),
        CONSTRAINT CHECK_RABOS
            CHECK(rabos>0 AND rabos<4)
    );
    
