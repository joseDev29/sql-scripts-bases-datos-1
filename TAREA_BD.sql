--DROP ZONE

DROP TABLE ENFRENTAMIENTOS;
DROP TABLE AVATARES;
DROP TABLE PARTIDAS;
DROP TABLE USUARIOS;
DROP TABLE JUEGOS;



--CREATION ZONE
CREATE TABLE JUEGOS(
    codigo NUMBER(10),
    nombre VARCHAR2(30) NOT NULL,
    descripcion VARCHAR2(50) NOT NULL,

    CONSTRAINT PK_JUEGOS
        PRIMARY KEY (codigo)
);


CREATE TABLE USUARIOS(
    login VARCHAR2(15),
    nombre VARCHAR2(30) NOT NULL,
    correo VARCHAR2(30) NOT NULL,
    nickname VARCHAR2(20) NOT NULL,
    password VARCHAR2(20) NOT NULL,
    
    CONSTRAINT PK_USUARIOS
        PRIMARY KEY (login)
);


CREATE TABLE PARTIDAS(
    codigo NUMBER(10),
    nombre VARCHAR2(30) NOT NULL,
    fecha_creacion DATE NOT NULL,
    estado NUMBER(1) NOT NULL,
    password VARCHAR2(20) NOT NULL,
    codigo_juego NUMBER(10) NOT NULL,
    
    CONSTRAINT PK_PARTIDAS
        PRIMARY KEY (codigo),
    
    CONSTRAINT PARTIDAS_FK_JUEGO
        FOREIGN KEY (codigo_juego) REFERENCES JUEGOS
);


CREATE TABLE AVATARES (
    nickname_usuario VARCHAR2(20),
    aspecto VARCHAR2(20),
    nivel NUMBER(3),
    codigo_juego NUMBER(10),
    
    CONSTRAINT PK_AVATARES
        PRIMARY KEY (nickname_usuario),
    
    CONSTRAINT FK_AVATARES_USUARIO
        FOREIGN KEY (nickname_usuario) 
            REFERENCES USUARIOS,
    
    CONSTRAINT FK_AVATARES_JUEGO
        FOREIGN KEY (codigo_juego) 
            REFERENCES JUEGOS
);





CREATE TABLE ENFRENTAMIENTOS(
    nickname_avatar VARCHAR2(20),
    codigo_partida NUMBER(10),
    resultado NUMBER(5),
    
    CONSTRAINT PK_CONEXIONES
        PRIMARY KEY (nickname_avatar , codigo_partida),
     
    CONSTRAINT FK_CONEXIONES_AVATAR
        FOREIGN KEY (nickname_avatar)
            REFERENCES AVATARES,
    
    CONSTRAINT FK_CONEXIONES_PARTIDA
            FOREIGN KEY (codigo_partida) 
                REFERENCES PARTIDAS
);






