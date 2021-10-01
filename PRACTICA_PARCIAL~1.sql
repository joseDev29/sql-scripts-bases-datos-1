SELECT * 
    FROM CLIENTES;
SELECT * 
    FROM ITEMS;
SELECT *   
    FROM pedidos;
SELECT * 
    FROM PROVEEDORES;


--Listar los proveedores de Bogota
SELECT  'Numero:' || TO_CHAR(nro_p) || ', Nombre:' || nom_p || ', Categoria:' || TO_CHAR(categoria) || ', Ciudad:' || ciud_p Proveedores  
    FROM PROVEEDORES P
        WHERE LOWER(P.ciud_p) = 'bogota';
        
----Otra forma
SELECT nro_p numero , nom_p nombre, categoria , ciud_p ciudad
    FROM PROVEEDORES P
        WHERE LOWER(P.ciud_p) LIKE 'bogota';
        
-- Listar los proveedores de primera categoria que sean de bogotta
SELECT nro_p numero, nom_p nombre, categoria, ciud_p ciudad
    FROM PROVEEDORES P
        WHERE P.categoria = 1 AND UPPER(p.ciud_p) = 'BOGOTA';
        
--Listar los proveedores que proveen queso
SELECT * 
    FROM PROVEEDORES P, PEDIDOS PD, ITEMS I 
        WHERE PD.nro_p = P.nro_p 
            AND PD.nro_i = I.nro_i AND LOWER(I.descripcion_i) LIKE '%queso%';
----Otra forma
SELECT * 
    FROM proveedores P INNER JOIN PEDIDOS PD ON p.nro_p=pd.nro_p 
        INNER JOIN items I ON pd.nro_i=i.nro_i 
            WHERE LOWER(I.descripcion_i) LIKE '%queso%';
    
--Listar los clientes que solicitan items provistos por el proveedor bavaria
SELECT DISTINCT c.*
    FROM clientes C, pedidos PD, proveedores P
        WHERE c.nro_c = pd.nro_c 
            AND pd.nro_p = p.nro_p AND UPPER(p.nom_p) LIKE '%BAVARIA%';
            
SELECT DISTINCT c.*
    FROM clientes c INNER JOIN pedidos pd ON c.nro_c = pd.nro_c 
        INNER JOIN proveedores p ON pd.nro_p = p.nro_p 
            WHERE UPPER(p.nom_p) LIKE '%BAVARIA%';
            
--Listar los clientes que solicitan algun item provisto por proveedores con categoria mayor que 2
SELECT DISTINCT  c.*
    FROM clientes c, pedidos pd, proveedores p
        WHERE c.nro_c = pd.nro_c 
            AND pd.nro_p = p.nro_p AND p.categoria > 2;
            
----Otra forma       
SELECT * 
    FROM clientes c WHERE c.nro_c IN (
        SELECT pd.nro_c
            FROM pedidos pd, proveedores p
                WHERE pd.nro_p = p.nro_p AND p.nro_p > 2
    );

----Otra forma
SELECT * 
    FROM clientes c WHERE c.nro_c IN (
        SELECT pd.nro_c
            FROM pedidos pd WHERE pd.nro_p IN (
                SELECT p.nro_p
                    FROM proveedores p WHERE p.categoria > 2 
            )
    );
    
--Listar los items pedidos por clientes de Cali
SELECT DISTINCT i.*
    FROM clientes c, pedidos pd, items i
        WHERE i.nro_i = pd.nro_i 
            AND pd.nro_c = c.nro_c AND LOWER(c.ciud_c) LIKE '%cali%';

SELECT DISTINCT i.*
    FROM items i INNER JOIN pedidos pd ON i.nro_i = pd.nro_i 
        INNER JOIN clientes c ON pd.nro_c = c.nro_c 
            WHERE LOWER(c.ciud_c) LIKE '%cali%';

--Listar los pedidos en los cuales un cliente de Bogota solicita articulos fabricados en Medellin
SELECT p.*
    FROM pedidos p, clientes c, items i 
        WHERE p.nro_c = c.nro_c AND UPPER(c.ciud_c) LIKE '%BOGOTA%'  
            AND p.nro_i = i.nro_i AND LOWER(i.ciud_i) LIKE '%medellin%';

----Otra forma
SELECT DISTINCT p.*
    FROM clientes c INNER JOIN pedidos p ON c.nro_c = p.nro_c 
        INNER JOIN items i ON p.nro_i =  i.nro_i 
            WHERE LOWER(c.ciud_c) LIKE '%bogota%' AND UPPER(i.ciud_i) LIKE '%MEDELLIN%';

--Listar los pedidos en los que el cliente CARULLA solicita ítems no solicitados por el cliente OLIMPICA
SELECT pd.*
    FROM pedidos pd, clientes c 
        WHERE UPPER(c.nom_c) = 'CARULLA' AND c.nro_c = pd.nro_c AND pd.nro_i NOT IN(
            SELECT pd2.nro_i
                FROM pedidos pd2, clientes c2
                    WHERE UPPER(c2.nom_c) = 'OLIMPICA' AND c2.nro_c = pd2.nro_c
        );
        
--Listar las ciudades en la forma (ciudad1, ciudad2) tales que un proveedor en la ciudad1 provea ítems solicitados por clientes en ciudad2
SELECT DISTINCT p.ciud_p, c.ciud_c
    FROM proveedores p, pedidos pd, clientes c
        WHERE pd.nro_p = p.nro_p AND pd.nro_c = c.nro_c;
            
--Listar los números de proveedores cuya categoría sea mayor que la de todos los proveedores que proveen el ítem Aguardiente
SELECT DISTINCT p.nro_p, p.categoria
    FROM proveedores p WHERE p.categoria > ALL(
        SELECT p2.categoria
            FROM proveedores p2, pedidos pd, items i
                WHERE p2.nro_p = pd.nro_p AND pd.nro_i = i.nro_i AND LOWER(i.descripcion_i) LIKE '%aguardiente%'
    );
    
--Listar los clientes que han pedido dos o más ítems distintos
SELECT DISTINCT C.nro_c, C.nom_c, C.ciud_c
    FROM CLIENTES C,PEDIDOS PE1,PEDIDOS PE2
    WHERE C.nro_c = PE1.nro_c 
    AND C.nro_c = PE2.nro_c
    AND PE1.nro_c = PE2.nro_c
    AND PE1.nro_i <> PE2.nro_i;