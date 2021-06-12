Create table Cientificos(
IdCientifico Number(5),
Cedula Number(10),
Nombre Char(35),
Apellido Varchar2(35),
F_n DATE,
Primary key (IdCientifico)
);

Create table Laboratorios(
Nombre Char(40) Constraint lanopk Primary Key,
Catastro Char(10),
Aforo Number(5)
);

Create table Investigaciones(
NumeroInv Number(5),
Descripcion Char(80),
Catastro Number(5),
Laboratorio Char(40),
Constraint Invelafk Foreign key(Laboratorio) references Laboratorios (nombre)
);

Create table Menciones(
Codigo Number(3),
IdCientifico Char(5),
NumeroInv Number(5),
Asignacion Number(10)
);

--Cienteficos se identifican unicamente por cedula y id
alter table Cientificos
    drop primary key;
    
alter table Cientificos
    add( primary key( IdCientifico , Cedula ) );
    

--Asignacion de dinero no superior a 10millones    
alter table Menciones
    add( 
        constraint tope_asignacion 
            check(Asignacion <= 10000000)
    );
    
-- Se cambia primary key Laboratorios por IdLab
alter table Investigaciones
    drop constraint Invelafk; 
    
alter table Laboratorios
    drop constraint lanopk; 
    
alter table Laboratorios
    add(
        IdLab NUMBER(10),
        
        constraint lanopk primary key(IdLab)
    );
    
alter table Investigaciones
    drop  column Laboratorio;

alter table Investigaciones
    add(
        IdLab NUMBER(10),
        constraint Invelafk 
            foreign key(IdLab) references Laboratorios(IdLab)
    );
    

    
--Se crea Cientificos_Menciones para individualizar la relacion n-n entre
-- cientificos y menciones, se elimina IdCientifico de menciones ya que una
--mencion puede corresponer a varios cientificos
alter table Menciones
    drop column IdCientifico;

alter table Menciones
    add primary key(Codigo);
    
create table Cientificos_Menciones(
    CodigoMencion number(3),
    IdCientifico number(5),
    CedulaCientifico number(10),
    
    constraint fk_cients_mencs_cient
        foreign key(IdCientifico, CedulaCientifico) 
            references Cientificos,
    
    constraint fk_cients_mencs_menc
        foreign key(CodigoMencion) 
            references Menciones(Codigo),
    
    constraint unico_mencion_cientifico 
        unique(CodigoMencion , IdCientifico)
);
    
    
--Constraint not null a Aforo y Catastro de tabla Laboratorios
alter table Laboratorios
    modify Aforo not null;
    
alter table Laboratorios
    modify Catastro not null;
    

    


    
