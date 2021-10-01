drop table Misiones;
drop table Integrantes;
drop table Legiones;

create table Legiones(
    codigo number(2),
    nombre varchar2(50),
    
    constraint legion_pk primary key (codigo)
);

create table Integrantes (
    codigo number(5),
    nombre varchar2(50),
    rango varchar2(10),
    codigo_legion number(2),
    
    constraint integrantes_pk primary key (codigo),
    constraint tipo_rango check(rango in ('Comandante', 'Teniente', 'Cadete')),
    constraint integrantes_legion foreign key (codigo_legion) references Legiones(codigo)
);

create table Enemigos (
    codigo number(5),
    nombre varchar2(50),
    poder number(1),
    
    constraint enemigos_pk primary key (codigo)
);

create table Misiones(
    codigo number(5),
    rango number(1),
    descripcion varchar2(50),
    codigo_integrante number(5),
    codigo_enemigo number(5),
    
    constraint misiones_pk primary key (codigo),
    constraint misiones_integrante_fk foreign key (codigo_integrante)
        references Integrantes(codigo),
    constraint misiones_enemigo_fk foreign key (codigo_enemigo)
        references Enemigos(codigo)
);


create sequence codigos_legiones
    start with 9999
    increment by 1
    nocache
    nocycle;
    
create sequence codigos_integrantes
    start with 9999
    increment by 1
    nocache
    nocycle;

    

