DROP TABLE Ganador_Oscar;
DROP TABLE Proyecciones;
DROP TABLE Frases;
DROP TABLE Secuelas;
DROP TABLE Musicalizacion_peliculas;
DROP TABLE Rodajes;
DROP TABLE Doblajes;
DROP TABLE Protagonistas;
DROP TABLE Guionistas_peliculas;
DROP TABLE Peliculas;
DROP TABLE Tip_Peliculas;
DROP TABLE Guionistas;
DROP TABLE Tip_Guionistas;
DROP TABLE Actores;
DROP TABLE Dobles;
DROP TABLE Niveles;
DROP TABLE Musicos;
DROP TABLE Dir_Fotografia;
DROP TABLE Directores;
DROP TABLE Productores;
DROP TABLE Estudios;
DROP TABLE Cines;

CREATE TABLE Cines(
    Cine VARCHAR2(35),
    pais VARCHAR2(35),
    ciudad VARCHAR2(35),
    aforo NUMBER(8),
    
    CONSTRAINT cinesPK PRIMARY KEY (Cine,pais,ciudad)
);

CREATE TABLE Estudios (
    nombre VARCHAR2(35), 
    direccion CHAR(50),
    pais VARCHAR2(35),
    
    CONSTRAINT estudiosPK PRIMARY KEY (nombre)
);

CREATE TABLE Productores(
    Nombre VARCHAR2(35),
    sexo CHAR(1),
    fecha DATE,
    pais VARCHAR2(35),

    CONSTRAINT productoresPK PRIMARY KEY (Nombre)
);

CREATE TABLE Directores(
    Nombred VARCHAR2(35), 
    pais VARCHAR2(35),
    fecha_nac DATE,
    
    CONSTRAINT directoresPK PRIMARY KEY (Nombred)
);

CREATE TABLE Tip_Guionistas(
    Cod NUMBER(3),
    Honorarios NUMBER(8),

    CONSTRAINT tip_guionistasPK PRIMARY KEY (Cod)
);

CREATE TABLE Guionistas(
    Nombreg VARCHAR2(35),
    tipo NUMBER(3),
    
    CONSTRAINT guionistasPK PRIMARY KEY (Nombreg),
    CONSTRAINT guionistaFKtip_guionistas FOREIGN KEY (tipo) REFERENCES Tip_Guionistas
);

CREATE TABLE Actores (
    nombre VARCHAR2(35), 
    direccion CHAR(50),
    sexo CHAR(1), 
    fecha_nacimiento DATE,
    pais VARCHAR2(35),

    CONSTRAINT actoresPK PRIMARY KEY (nombre)
);

CREATE TABLE Niveles(
    Nivel NUMBER(3),
    Descripcion CHAR(100),
    
    CONSTRAINT nivelesPK PRIMARY KEY (Nivel)
);

CREATE TABLE Dobles(
    nombre CHAR(35),
    experiencia NUMBER(3),
    nivel NUMBER(3),
    
    CONSTRAINT doblesPK PRIMARY KEY (nombre),
    CONSTRAINT dobleFKniveles FOREIGN KEY (nivel) REFERENCES Niveles
);

CREATE TABLE Dir_Fotografia(
    Nombref VARCHAR2(35),
    experiencia NUMBER(2),

    CONSTRAINT dir_fotografiaPK PRIMARY KEY (Nombref)
);

CREATE TABLE Musicos(
    Nombrem VARCHAR2(35),
    sexo CHAR(1),
    Fecha_n DATE,
    pais VARCHAR2(35),
    
    CONSTRAINT musicosPK PRIMARY KEY (Nombrem)
);

CREATE TABLE Tip_Peliculas(
    Cod NUMBER(2),
    Descripcion CHAR(30),

    CONSTRAINT tip_peliculasPK PRIMARY KEY (Cod)
);

CREATE TABLE Peliculas(
    titulo VARCHAR2(35),
    ano NUMBER(4),
    duracion NUMBER(5,2),
    nombre_estudio VARCHAR2(35),
    recaudo NUMBER(10),
    direc VARCHAR2(35),
    tipo NUMBER(2),
    lanzamiento DATE,
    fotografo VARCHAR2(35),
    productor VARCHAR2(35),
    
    CONSTRAINT peliculasPK PRIMARY KEY (titulo, ano),
    CONSTRAINT peliculaFKestudios FOREIGN KEY (nombre_estudio) REFERENCES Estudios,
    CONSTRAINT peliculaFKdirectores FOREIGN KEY (direc) REFERENCES Directores,
    CONSTRAINT peliculaFKtip_peliculas FOREIGN KEY (tipo) REFERENCES Tip_Peliculas,
    CONSTRAINT peliculaFKdir_fotografia FOREIGN KEY (fotografo) REFERENCES Dir_Fotografia,
    CONSTRAINT peliculaFKdir_productores FOREIGN KEY (productor) REFERENCES Productores
);

CREATE TABLE Guionistas_peliculas(
    titulo VARCHAR2(35), 
    ano NUMBER(4),
    nombreg VARCHAR2(35),

    CONSTRAINT peliculasFK FOREIGN KEY (titulo,ano) REFERENCES Peliculas(titulo,ano),
    CONSTRAINT guionistrasFK FOREIGN KEY (nombreg) REFERENCES Guionistas(nombreg)
);

CREATE TABLE Protagonistas (
    tit_pel VARCHAR2(35), 
    ano_pel NUMBER(4),
    actor VARCHAR2(35),
    rol CHAR(25),
    tarifa NUMBER(8),

    CONSTRAINT protagonistasPeliculaFK FOREIGN KEY (tit_pel,ano_pel) REFERENCES Peliculas(titulo,ano),
    CONSTRAINT protagonistaActorFK FOREIGN KEY (actor) REFERENCES Actores(nombre)
);

CREATE TABLE Doblajes(
    pelicula VARCHAR2(35), 
    ano NUMBER(4),
    actor VARCHAR2(35),
    doble CHAR(35),
    numero_escena NUMBER(5),

    CONSTRAINT doblajes_peliculasFK FOREIGN KEY (pelicula,ano) REFERENCES Peliculas(titulo,ano),
    CONSTRAINT doblajes_actoresFK FOREIGN KEY (actor) REFERENCES Actores(nombre),
    CONSTRAINT doblajes_doblesFK FOREIGN KEY (doble) REFERENCES Dobles(nombre)
);

CREATE TABLE Rodajes(
    titulo VARCHAR2(35),
    ano NUMBER(4),
    pais VARCHAR2(35),
    descripcion VARCHAR(100),
    fecha DATE,

    CONSTRAINT rodajes_peliculasFK FOREIGN KEY (titulo,ano) REFERENCES Peliculas(titulo,ano)
);

CREATE TABLE Musicalizacion_peliculas(
    titulo VARCHAR2(35), 
    ano NUMBER(4),
    musico VARCHAR2(35),
    porcentaje NUMBER(3),
    
    CONSTRAINT musicalizacion_peliculasFK FOREIGN KEY (titulo,ano) REFERENCES Peliculas(titulo,ano),
    CONSTRAINT musicalizacion_musicosFK FOREIGN KEY (musico) REFERENCES Musicos
);

CREATE TABLE Secuelas(
    titulo VARCHAR2(35), 
    ano NUMBER(4),
    titulos VARCHAR2(35),
    anos NUMBER(4),
    descipcion VARCHAR2(200),

    CONSTRAINT secuelas_peliculasFK FOREIGN KEY (titulo,ano) REFERENCES Peliculas(titulo,ano),
    CONSTRAINT secuelas_peliculasFK2 FOREIGN KEY (titulos,anos) REFERENCES Peliculas(titulo,ano)
);

CREATE TABLE Frases(
    titulo VARCHAR2(35), 
    ano NUMBER(4),
    frases CHAR(100),
    
    CONSTRAINT frases_peliculasFK FOREIGN KEY (titulo,ano) REFERENCES Peliculas(titulo,ano)
);

CREATE TABLE Proyecciones(
    titulo VARCHAR2(35), 
    ano NUMBER(4),
    Cine VARCHAR2(35),
    pais VARCHAR2(35),
    ciudad VARCHAR2(35),
    fecha TIMESTAMP,

    CONSTRAINT proyecciones_peliculasFK FOREIGN KEY (titulo,ano) REFERENCES Peliculas(titulo,ano),
    CONSTRAINT proyecciones_cinesFK FOREIGN KEY (cine,pais,ciudad) REFERENCES Cines(cine,pais,ciudad)

);

CREATE TABLE Ganador_Oscar(
    titulo VARCHAR2(35), 
    ano NUMBER(4),
    version NUMBER(4),
    actor VARCHAR2(35),
    director VARCHAR2(35),
    fotografia VARCHAR2(35),
    fecha DATE,

CONSTRAINT ganador_peliculasFK FOREIGN KEY (titulo,ano) REFERENCES Peliculas(titulo,ano),
CONSTRAINT ganador_actoresFK FOREIGN KEY (actor) REFERENCES Actores(nombre),
CONSTRAINT ganador_directoresFK FOREIGN KEY (director) REFERENCES Directores(nombred),
CONSTRAINT ganador_fotografoFK FOREIGN KEY (fotografia) REFERENCES Dir_Fotografia(nombref)
);

