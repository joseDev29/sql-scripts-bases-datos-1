--DROP TABLE REVISIONES;
--DROP TABLE COCHES;
--DROP TABLE CLIENTES;


CREATE TABLE CLIENTES
(
Nif NUMBER(12),
Codigo NUMBER(10),
Nombre VARCHAR2(35),
Direccion VARCHAR2(35),
Ciudad VARCHAR2(15),
Telefono NUMBER(10),
PRIMARY KEY (Nif)
);

CREATE TABLE COCHES
(
Matricula CHAR(7),
Marca VARCHAR(10),
Modelo VARCHAR(10),
COLOR VARCHAR(10),
PRECIO NUMBER(12),
NifC NUMBER(12),
PRIMARY KEY (Matricula),
FOREIGN KEY (NifC) REFERENCES CLIENTES
);

CREATE TABLE REVISIONES
(
Codigo VARCHAR2(10),
CambioFiltro NUMBER(1),
CambioAceite NUMBER(1),
CambioFrenos NUMBER(1),
MatriculaC CHAR(7),
PRIMARY KEY (Codigo),
FOREIGN KEY (MatriculaC) REFERENCES COCHES
);

