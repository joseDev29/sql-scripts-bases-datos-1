drop table Empleados;
drop table Departamentos;

create table Departamentos
(
    id number(3) constraint departamentos_pk primary key,
    nombre varchar2(35)
);

create table Empleados
(
    id number(3) constraint empleados_pk primary key,
    apellido varchar2(35),
    salario number,
    fecha_nacimiento date,
    departamento_id number(3)
        constraint empleados_departamento_fk references Departamentos(id) 
        
    on delete set null
);


--DML: Data Manipulation Languaje

--INSERT: Anexa ragistros a una tabla

insert into Departamentos
    values(10, 'Ventas');

insert into Departamentos(id)
    values(11);
    
    commit; --confirma todos los comandos DML ejecutados, de los contrario el motor
    --los retrocedera

describe Departamentos;

--Unidad de trabajo logica
-- Si alguno de las instrucciones de la unidad presenta un error, 
--el motor no confirmara niguna de las
--instrucciones que se encuentren dentro de la unidad

/*begin
    insert into Departamentos
        values(10, 'Ventas');
    
    insert into Departamentos(id)
        values(11);
end;*/

--SEQUENCES

create sequence departamentos_sequence
    start  with 10 --en donde empieza
    increment by 1 --valor incremental
    nocache
    nocycle; --al llegar al valor maximo, no se reinnicia
    
    
--nextval: numero siguiente en la secuencia
--curval: numero actual de la siguiente

insert into Departamentos(id)
    values(departamentos_sequence.nextval);

insert into Departamentos(id)
    values(departamentos_sequence.nextval);

insert into Departamentos(id)
    values(departamentos_sequence.nextval);
    
 
create sequence empleados_sequence
    start  with 100
    increment by 1 
    nocache
    nocycle;
    
    
insert into Empleados
    values(empleados_sequence.nextval, 'Vargas', 900000, to_date('10/05/1999', 'dd/mm/yyyy'), 16);

--Borrado de registros: DELETE
--Actualizacion de registros: UPDATE

--Que hace el motor con loa registros hijos en caso de borrar o actualizar los registros padres:
    --RESTRICT: Restringe la operacion, no permite eliminar el registro (Por defecto en oracle)   (No funcional en oracle)
    --NO ACTION: Perimite borrar mientras no tenga registros hijos (Por defecto en oracle)   (No funcional en oracle)
    --CASCADE: Elimina o actualiza tambien los registros hijos (En oracle solo funciona en DELETE, no en UPDATE)
    --SET NULL: Agraga NULL en los valores de los registros hijos relacionados al padre (En oracle solo funciona en DELETE, no en UPDATE)
    --SET DEFAULT: Agrega un valor predeterminado a los registros hijos relacionados al padre 

delete from Departamentos where id=14;

--SQL
    
    --SELECT sentencia
    --FROM sentencia
    --WHERE clausula o filtro de las filas
    --GROUP BY agrupaciones
    --HAVING clausula o filtro sobre las agrupaciones
    --ORDER BY oredenacion de la salida de datos , (DESC, ASC)

--Operadores logicos: AND, OR, NOT
--Operadores matematicos: =, *, -, /, ^

--TRIM corta los espacios en blanco
--UPPER convierte a mayuscula una cadena
--LOWER convierte a minuscula una cadena

--Selecciona y muestra todos los registros de la tabla
select * from Departamentos;

--multiplica las filas de departamentos.id por las filas empelados.apellido (Producto cartesiano)
select departamentos.id, empleados.apellido from departamentos, empleados;

--JOINS cruce de tablas, entidades, llaves primarias contra las llaves foraneas

    --Internos: Busca coincidencias exactas (Que el dato de una columna coincida con el dato de otra columna de otra tabla)
    
    --Se trae el id y el nombre de los departamentos que al hacer join con los empleados sean iguales el id del departamento y el departamento_id del empleados
     select departamentos.id, departamentos.nombre, empleados.apellido 
        from departamentos inner join empleados
            on departamentos.id=empleados.departamento_id;
            
    --Otra forma
    select departamentos.id, departamentos.nombre, empleados.apellido 
        from departamentos , empleados 
            where departamentos.id=empleados.departamento_id;
     
    --
    

