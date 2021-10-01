-----------------------------------------------------------------------
--ZONA DE INSERCION DE REGISTROS
-----------------------------------------------------------------------
INSERT INTO ESTUDIOS
VALUES('20th Century-Fox','Century City Los Angeles California','USA');
INSERT INTO ESTUDIOS
VALUES('Warner Bros','Burbank California','USA');
INSERT INTO ESTUDIOS
VALUES('Columbia Pictures','Hollywood Av 4 592-23','USA');
INSERT INTO ESTUDIOS
VALUES('Universal Pictures','Prada 13-34 Los Angeles California','USA');
INSERT INTO ESTUDIOS
VALUES('Walt Disney Pictures','Hollywood Ross Avenue','USA');
INSERT INTO ESTUDIOS
VALUES('Paramount Pictures','Hollywood California Coute 34','USA');
INSERT INTO ESTUDIOS
VALUES('Metro-Goldwyn-Mayer Inc','Hollywood California Rocco 124','USA');
------------------------------------------------------------------------

INSERT INTO DIRECTORES
VALUES('Francis Ford Coppola','EEUU',TO_DATE('17-05-1958','DD-MM-YYYY'));
INSERT INTO DIRECTORES
VALUES('James Cameron','INGLATERRA',TO_DATE('17-08-1959','DD-MM-YYYY'));
INSERT INTO DIRECTORES
VALUES('Tim Burton','EEUU',TO_DATE('30-11-1943','DD-MM-YYYY'));
INSERT INTO DIRECTORES
VALUES('Joel Coen','RUSIA',TO_DATE('08-04-1945','DD-MM-YYYY'));
INSERT INTO DIRECTORES
VALUES('Quentin Tarantino','EEUU',null);
INSERT INTO DIRECTORES
VALUES('Martin Scorsese','EEUU',TO_DATE('11-02-1955','DD-MM-YYYY'));
INSERT INTO DIRECTORES
VALUES('Steven Spielberg','EEUU',TO_DATE('02-04-1960','DD-MM-YYYY'));
INSERT INTO DIRECTORES
VALUES('Sylvester Stallone','EEUU',TO_DATE('06-05-1946','DD-MM-YYYY'));
------------------------------------------------------------------------
INSERT INTO TIP_PELICULAS
VALUES(90,'ACCION');
INSERT INTO TIP_PELICULAS
VALUES(91,'DRAMA');
INSERT INTO TIP_PELICULAS
VALUES(92,'TERROR');
INSERT INTO TIP_PELICULAS
VALUES(93,'ARTE');
INSERT INTO TIP_PELICULAS
VALUES(94,'COMEDIA');
INSERT INTO TIP_PELICULAS
VALUES(95,'ANIMACION');

------------------------------------------------------------------------
INSERT INTO DIR_FOTOGRAFIA
VALUES('MARIO EL A', 14);
INSERT INTO DIR_FOTOGRAFIA
VALUES('MARIO EL E', 12);
INSERT INTO DIR_FOTOGRAFIA
VALUES('MARIO EL I', 13);
INSERT INTO DIR_FOTOGRAFIA
VALUES('MARIO EL O', 11);
INSERT INTO DIR_FOTOGRAFIA
VALUES('MARIO EL U', 14);
INSERT INTO DIR_FOTOGRAFIA
VALUES('JAMES CRABE', 14);

------------------------------------------------------------------------
INSERT INTO PRODUCTORES
VALUES('NORBERT WISS','M',NULL,'POLONIA');
INSERT INTO PRODUCTORES
VALUES('OSCAR LORENZO','M',TO_DATE('11/02/1967','DD/MM/YYYY'),'POLONIA');
INSERT INTO PRODUCTORES
VALUES('MARIA CHEKA','M',TO_DATE('12/04/1969','DD/MM/YYYY'),'BRASIL');
INSERT INTO PRODUCTORES
VALUES('MARINA RIKO','M',NULL,'EEUU');
INSERT INTO PRODUCTORES
VALUES('NORBERTO RUIZ','M',TO_DATE('12/02/1969','DD/MM/YYYY'),'ARGENTINA');
INSERT INTO PRODUCTORES
VALUES('JAMES CRABE','M',TO_DATE('12/02/1955','DD/MM/YYYY'),'EEUU');
------------------------------------------------------------------------

INSERT INTO TIP_GUIONISTAS
VALUES(200,14000);
INSERT INTO TIP_GUIONISTAS
VALUES(300,8000);
INSERT INTO TIP_GUIONISTAS
VALUES(400,11000);
INSERT INTO TIP_GUIONISTAS
VALUES(500,4000);

-------------------------------------------------------------------------
INSERT INTO GUIONISTAS
VALUES('Carlos Fuentes',200);
INSERT INTO GUIONISTAS
VALUES('Cesare Maldini',200);
INSERT INTO GUIONISTAS
VALUES('Milk Maik',400);
INSERT INTO GUIONISTAS
VALUES('Ion Guess',500);

-------------------------------------------------------------------------
INSERT INTO MUSICOS
VALUES('ARKAM','M',TO_DATE('11/02/1967','DD/MM/YYYY'),'POLONIA');
INSERT INTO PRODUCTORES
VALUES('ORTOLD','M',TO_DATE('11/03/1969','DD/MM/YYYY'),'GRECIA');
INSERT INTO PRODUCTORES
VALUES('ARNULFO','M',TO_DATE('11/04/1977','DD/MM/YYYY'),'ESPA�A');
INSERT INTO PRODUCTORES
VALUES('LORENZO','M',TO_DATE('11/05/1976','DD/MM/YYYY'),'ESPA�A');
INSERT INTO PRODUCTORES
VALUES('LIANA','F',TO_DATE('11/06/1980','DD/MM/YYYY'),'EEUU');

-------------------------------------------------------------------------
INSERT INTO NIVELES
VALUES(600,'COMBATE CUERPO A CUERPO');
INSERT INTO NIVELES
VALUES(601,'CAIDAS');
INSERT INTO NIVELES
VALUES(602,'ESCENAS AEREAS');

-------------------------------------------------------------------------
INSERT INTO DOBLES
VALUES('COLD SEVERS',12,600);
INSERT INTO DOBLES
VALUES('MARIO FERRAGAMO',12,602);
INSERT INTO DOBLES
VALUES('CAROL MARIN',8,600);

-------------------------------------------------------------------------
INSERT INTO PELICULAS
VALUES('LA GUERRA DE LAS GALAXIAS',1977,219,'20th Century-Fox',1200000,'Quentin Tarantino',90,TO_DATE('14-03-1979','DD-MM-YYYY'),
'MARIO EL A','NORBERTO RUIZ');
INSERT INTO PELICULAS
VALUES('DEPREDADOR',1987,204,'20th Century-Fox',400000,'Tim Burton',90,TO_DATE('21-07-1985','DD-MM-YYYY'),
'MARIO EL I','MARINA RIKO');
INSERT INTO PELICULAS
VALUES('TITANIC',1997,289,'20th Century-Fox',5500000,'Quentin Tarantino',93,TO_DATE('20-08-1998','DD-MM-YYYY'),
'MARIO EL A','NORBERTO RUIZ');
INSERT INTO PELICULAS
VALUES('LA PROFECIA',1986,167,'20th Century-Fox',900000,'Francis Ford Coppola',92,TO_DATE('21-12-1985','DD-MM-YYYY'),
'MARIO EL U','MARIA CHEKA');
INSERT INTO PELICULAS
VALUES('EL EXORCISTA',1991,167,'Warner Bros',1200000,'Martin Scorsese',91,TO_DATE('02-09-1980','DD-MM-YYYY'),
'MARIO EL U','MARIA CHEKA');
INSERT INTO PELICULAS
VALUES('THE MATRIX',2003,167,'Warner Bros',1560000,null,92,TO_DATE('22-03-2002','DD-MM-YYYY'),
'MARIO EL U','MARINA RIKO');
INSERT INTO PELICULAS
VALUES('HARRY POTTER',2004,145,'Warner Bros',3200000,'Martin Scorsese',93,TO_DATE('21-03-2005','DD-MM-YYYY'),
'MARIO EL A','NORBERTO RUIZ');
INSERT INTO PELICULAS
VALUES('CASABLANCA',1942,278,'Warner Bros',350000,'Martin Scorsese',90,TO_DATE('11-11-1955','DD-MM-YYYY'),
'MARIO EL A','MARINA RIKO');
INSERT INTO PELICULAS
VALUES('EL HOMBRE ARA�A',2002,205,'Columbia Pictures',5200000,null,90,TO_DATE('08-08-1999','DD-MM-YYYY'),
'MARIO EL A','NORBERTO RUIZ');
INSERT INTO PELICULAS
VALUES('EL ULTIMO SAMURAI',2005,165,'Columbia Pictures',1220000,'James Cameron',90,TO_DATE('24-03-2004','DD-MM-YYYY'),
'MARIO EL E','MARINA RIKO');
INSERT INTO PELICULAS
VALUES('STUART LITTLE',2005,159,'Columbia Pictures',212000,'Tim Burton',95,TO_DATE('04-01-2002','DD-MM-YYYY'),
'MARIO EL E','OSCAR LORENZO');
INSERT INTO PELICULAS
VALUES('E.T',1982,213,'Universal Pictures',5450000,'Tim Burton',91,TO_DATE('24-03-1985','DD-MM-YYYY'),
'MARIO EL A','MARINA RIKO');
INSERT INTO PELICULAS
VALUES('TIBURON',1975,179,'Universal Pictures',789000,'James Cameron',92,TO_DATE('01-12-1975','DD-MM-YYYY'),
'MARIO EL E','MARINA RIKO');
INSERT INTO PELICULAS
VALUES('GLADIATOR',2000,250,'Columbia Pictures',670000,'James Cameron',90,TO_DATE('29-12-2000','DD-MM-YYYY'),
'MARIO EL E','MARINA RIKO');
INSERT INTO PELICULAS
VALUES('PIRATAS DEL CARIBE',2004,235,'Walt Disney Pictures',3450000,'Tim Burton',90,TO_DATE('20-09-2006','DD-MM-YYYY'),
'MARIO EL A','OSCAR LORENZO');
INSERT INTO PELICULAS
VALUES('TRON',2010,168,'Walt Disney Pictures',985000,'Francis Ford Coppola',91,TO_DATE('26-03-2010','DD-MM-YYYY'),
'MARIO EL A','OSCAR LORENZO');
INSERT INTO PELICULAS
VALUES('EL REY LEON',1999,189,'Walt Disney Pictures',385000,'Tim Burton',95,TO_DATE('12-11-1999','DD-MM-YYYY'),
'MARIO EL O','OSCAR LORENZO');
INSERT INTO PELICULAS
VALUES('LO QUE EL VIENTO SE LLEVO',1959,215,'Metro-Goldwyn-Mayer Inc',4500000,'Quentin Tarantino',94,TO_DATE('24-03-1945','DD-MM-YYYY'),
'MARIO EL A','OSCAR LORENZO');
INSERT INTO PELICULAS
VALUES('Rambo II:First Blood',1985,215,'20th Century-Fox',1300000,'Steven Spielberg',93,TO_DATE('21-06-1985','DD-MM-YYYY'),
'MARIO EL E','MARINA RIKO');
INSERT INTO PELICULAS
VALUES('2001-ODISEA DEL ESPACIO',1968,232,'Metro-Goldwyn-Mayer Inc',780000,'Quentin Tarantino',93,TO_DATE('20-12-1968','DD-MM-YYYY'),
'MARIO EL U','MARIA CHEKA');
INSERT INTO PELICULAS
VALUES('LA PLAYA',2000,235,'20th Century-Fox',880000,'Martin Scorsese',92,TO_DATE('27-03-2000','DD-MM-YYYY'),
'MARIO EL E','MARINA RIKO');
INSERT INTO PELICULAS
VALUES('RAMBO IV:REGRESO AL INFIERNO',2008,213,'20th Century-Fox',280000,'Martin Scorsese',92,TO_DATE('28-03-2008','DD-MM-YYYY'),
'MARIO EL A','NORBERTO RUIZ');
INSERT INTO PELICULAS
VALUES('RAMBO I:ACORRALADO',1982,213,'20th Century-Fox',1970000,'Tim Burton',91,TO_DATE('26-03-1982','DD-MM-YYYY'),
'MARIO EL E','OSCAR LORENZO');
INSERT INTO PELICULAS
VALUES('RAMBO III',1988,219,'20th Century-Fox',2970000,'James Cameron',90,TO_DATE('24-03-1988','DD-MM-YYYY'),
'MARIO EL A','MARINA RIKO');
INSERT INTO PELICULAS
VALUES('EL PADRINO',1972,175,'20th Century-Fox',3500000,'Francis Ford Coppola',91,TO_DATE('24-03-1972','DD-MM-YYYY'),
'MARIO EL A','OSCAR LORENZO');
INSERT INTO PELICULAS
VALUES('EL PADRINO II',1974,200,'20th Century-Fox',3500000,'Francis Ford Coppola',91,TO_DATE('20-12-1974','DD-MM-YYYY'),
'MARIO EL U','MARIA CHEKA');
INSERT INTO PELICULAS
VALUES('EL PADRINO III',1984,200,'20th Century-Fox',4500000,'Francis Ford Coppola',91,TO_DATE('20-12-1984','DD-MM-YYYY'),
'MARIO EL E','MARIA CHEKA');
INSERT INTO PELICULAS
VALUES('ROCKY I',1978,205,'20th Century-Fox',500000,'Francis Ford Coppola',91,TO_DATE('20-12-1978','DD-MM-YYYY'),
'MARIO EL U','NORBERTO RUIZ');
INSERT INTO PELICULAS
VALUES('ROCKY II',1981,229,'20th Century-Fox',500000,'Francis Ford Coppola',91,TO_DATE('20-12-1983','DD-MM-YYYY'),
'MARIO EL A','NORBERTO RUIZ');
INSERT INTO PELICULAS
VALUES('ROCKY III',1987,219,'20th Century-Fox',1500000,'Francis Ford Coppola',91,TO_DATE('20-12-1987','DD-MM-YYYY'),
'MARIO EL A','MARIA CHEKA');
INSERT INTO PELICULAS
VALUES('ROCKY IV',1999,219,'20th Century-Fox',1500000,null,91,TO_DATE('20-12-1999','DD-MM-YYYY'),
'MARIO EL E','MARINA RIKO');
INSERT INTO PELICULAS
VALUES('GLADIATOR',2001,250,'Universal Pictures',670000,'James Cameron',90,TO_DATE('29-12-2000','DD-MM-YYYY'),
'MARIO EL E','MARINA RIKO');
INSERT INTO PELICULAS
VALUES('GLADIATOR',2003,250,'20th Century-Fox',670000,'James Cameron',90,TO_DATE('29-12-2000','DD-MM-YYYY'),
'MARIO EL E','MARINA RIKO');
INSERT INTO PELICULAS
VALUES('FORREST GUMP',1994,250,'20th Century-Fox',456559,'James Cameron',90,TO_DATE('29-12-2000','DD-MM-YYYY'),
'MARIO EL E','MARINA RIKO');
INSERT INTO PELICULAS
VALUES('CASINO',1995,178,'20th Century-Fox',5960000,'Martin Scorsese',90,TO_DATE('05-12-1995','DD-MM-YYYY'),
'MARIO EL E','MARINA RIKO');
INSERT INTO PELICULAS
VALUES('ROCKY BALBOA',2006,178,'Metro-Goldwyn-Mayer Inc',3960000,'Sylvester Stallone',90,TO_DATE('22-12-2006','DD-MM-YYYY'),
'JAMES CRABE','MARIA CHEKA');


----------------------------------------------------------------------------------------------------------------------------------

INSERT INTO FRASES
VALUES('CASINO',1995,'Hay tres maneras de hacer las cosas: la correcta la incorrecta y la m�a');
INSERT INTO FRASES
VALUES('FORREST GUMP',1994,'Tonto es el que hace tonterias');
INSERT INTO FRASES
VALUES('ROCKY BALBOA',2006,'El corazon es el unico musculo que envejece');
INSERT INTO FRASES
VALUES('CASINO',1995,'El unico respeto que importa es el respeto de uno mismo');
INSERT INTO FRASES
VALUES('ROCKY BALBOA',2006,'Ni tu ni nadie va ha pegar tan fuerte como la vida');



-----------------------------------------------------------------------------------------------------------
INSERT INTO ACTORES
VALUES('Harrison Ford','Chicago Illinois','M',TO_DATE('13-07-1942','DD-MM-YYYY'),'USA'); 
INSERT INTO ACTORES
VALUES('Carrie Fisher','Beverly Hills','F',TO_DATE('21-10-1956','DD-MM-YYYY'),'USA');
INSERT INTO ACTORES
VALUES('Henry Tomas','San Antonio Texas','M',TO_DATE('09-09-1971','DD-MM-YYYY'),'USA');
INSERT INTO ACTORES
VALUES('Roy Scheider','Orange New Jersey','M',TO_DATE('10-11-1932','DD-MM-YYYY'),'USA'); 
INSERT INTO ACTORES
VALUES('Kirsten Dunst','Point Pleasant New Jersey','F',TO_DATE('30-04-1982','DD-MM-YYYY'),'USA');
INSERT INTO ACTORES
VALUES('Tobey Maguire','Santa Monica California','M',TO_DATE('27-06-1975','DD-MM-YYYY'),'USA');
INSERT INTO ACTORES
VALUES('Leonardo DiCaprio','Hollywood Los Angeles California' ,'M',TO_DATE('11-11-1974','DD-MM-YYYY'),'USA');
INSERT INTO ACTORES
VALUES('Richard Crenna','Los Angeles California','F',TO_DATE('30-11-1926','DD-MM-YYYY'),'USA');
INSERT INTO ACTORES
VALUES('Kate Winslet','Reading Berkshire UK','F',TO_DATE('05-10-1975','DD-MM-YYYY'),'England');
INSERT INTO ACTORES
VALUES('Arnold Schwarzenegger','Thal Styria','M',TO_DATE('30-07-1947','DD-MM-YYYY'),'Austria');
INSERT INTO ACTORES
VALUES('Carl Weathers','New Orleans Louisiana','M',TO_DATE('14-01-1948','DD-MM-YYYY'),'USA');
INSERT INTO ACTORES
VALUES('Russell Crowe','Wellington North Island','M',TO_DATE('07-04-1967','DD-MM-YYYY'),'New Zealand');
INSERT INTO ACTORES
VALUES('Connie Nielsen','Elling Frederikshavn','F',TO_DATE('03-07-1965','DD-MM-YYYY'),'Denmark');
INSERT INTO ACTORES
VALUES('Kevin Costner','Lynwood California','M',TO_DATE('18-01-1955','DD-MM-YYYY'),'USA');
INSERT INTO ACTORES
VALUES('Angelina Jolie Voight','Los Angeles California','F',TO_DATE('04-06-1975','DD-MM-YYYY'),'USA');
INSERT INTO ACTORES
VALUES('Sylvester Stallone','New York City','M',TO_DATE('06-05-1946','DD-MM-YYYY'),'USA');
INSERT INTO ACTORES
VALUES('Charles Napier','Mt Union Kentucky','M',TO_DATE('12-04-1936','DD-MM-YYYY'),'USA');
INSERT INTO ACTORES
VALUES('Marlon Brando','Omaha Nebraska USA','M',TO_DATE('03-04-1924','DD-MM-YYYY'),'USA');
INSERT INTO ACTORES
VALUES('Al Pacino','New York City USA','M',TO_DATE('25-04-1940','DD-MM-YYYY'),'USA');
INSERT INTO ACTORES
VALUES('Linda Blair','St Louis Missouri USA','F',TO_DATE('22-01-1959','DD-MM-YYYY'),'USA');
INSERT INTO ACTORES
VALUES('Maria Valverde','Madrid Av 90','F',TO_DATE('24-03-1987','DD-MM-YYYY'),'ESPA�A');
INSERT INTO ACTORES
VALUES('Maria Bello','Pensilvania USA','F',TO_DATE('18-04-1967','DD-MM-YYYY'),'USA');
INSERT INTO ACTORES
VALUES('Linda Hamilton','Marykand USA','F',TO_DATE('26-09-1956','DD-MM-YYYY'),'USA');
INSERT INTO ACTORES
VALUES('Robert De Niro','Nueva York','M',TO_DATE('17-09-1943','DD-MM-YYYY'),'USA');
INSERT INTO ACTORES
VALUES('Sharon Stone',' Meadville Pensilvania,','F',TO_DATE('10-03-1958','DD-MM-YYYY'),'USA');
INSERT INTO ACTORES
VALUES('Tom Cruise','New York City','M',TO_DATE('10-03-1958','DD-MM-YYYY'),'USA');





-----------------------------------------------------------------------------------------------------------
INSERT INTO PROTAGONISTAS
VALUES('LA GUERRA DE LAS GALAXIAS',1977,'Harrison Ford','Starring',40000);
INSERT INTO PROTAGONISTAS
VALUES('E.T',1982,'Henry Tomas','Starring',34900);
INSERT INTO PROTAGONISTAS
VALUES('LA GUERRA DE LAS GALAXIAS',1977,'Carrie Fisher','Starring',25890);
INSERT INTO PROTAGONISTAS
VALUES('TIBURON',1975,'Roy Scheider','Starring',null);
INSERT INTO PROTAGONISTAS
VALUES('EL HOMBRE ARA�A',2002,'Tobey Maguire','Starring',45678);
INSERT INTO PROTAGONISTAS
VALUES('EL HOMBRE ARA�A',2002,'Kirsten Dunst','Starring',null);
INSERT INTO PROTAGONISTAS
VALUES('EL HOMBRE ARA�A',2002,'Angelina Jolie Voight','Starring',999999);
INSERT INTO PROTAGONISTAS
VALUES('RAMBO IV:REGRESO AL INFIERNO',2008,'Sylvester Stallone','Starring',99099);
INSERT INTO PROTAGONISTAS
VALUES('TITANIC',1997,'Leonardo DiCaprio','Starring',12345);
INSERT INTO PROTAGONISTAS
VALUES('TITANIC',1997,'Maria Bello','COstarring',null);
INSERT INTO PROTAGONISTAS
VALUES('TITANIC',1997,'Kate Winslet','Starring',11345);
INSERT INTO PROTAGONISTAS
VALUES('Rambo II:First Blood',1985,'Sylvester Stallone','Starring',23456);
INSERT INTO PROTAGONISTAS
VALUES('LA PLAYA',2000,'Leonardo DiCaprio','Starring',67000);
INSERT INTO PROTAGONISTAS
VALUES('DEPREDADOR',1987,'Arnold Schwarzenegger','Starring',13455);
INSERT INTO PROTAGONISTAS
VALUES('RAMBO III',1988,'Richard Crenna','Costarring',46900);
INSERT INTO PROTAGONISTAS
VALUES('DEPREDADOR',1987,'Carl Weathers','Costarring',null);
INSERT INTO PROTAGONISTAS
VALUES('RAMBO I:ACORRALADO',1982,'Sylvester Stallone','Starring',18987);
INSERT INTO PROTAGONISTAS
VALUES('RAMBO I:ACORRALADO',1982,'Richard Crenna','Costarring',14456);
INSERT INTO PROTAGONISTAS
VALUES('RAMBO III',1988,'Sylvester Stallone','Starring',16700);
INSERT INTO PROTAGONISTAS
VALUES('RAMBO III',1988,'Arnold Schwarzenegger','Starring',16700);
INSERT INTO PROTAGONISTAS
VALUES('Rambo II:First Blood',1985,'Richard Crenna','Costarring',15789);
INSERT INTO PROTAGONISTAS
VALUES('Rambo II:First Blood',1985,'Charles Napier','Costarring',null);
INSERT INTO PROTAGONISTAS
VALUES('Rambo II:First Blood',1985,'Charles Napier','Costarring',null);
INSERT INTO PROTAGONISTAS
VALUES('EL PADRINO',1972,'Marlon Brando','Starring',null);
INSERT INTO PROTAGONISTAS
VALUES('EL PADRINO II',1974,'Al Pacino','Starring',null);
INSERT INTO PROTAGONISTAS
VALUES('EL PADRINO III',1984,'Al Pacino','Starring',130000);
INSERT INTO PROTAGONISTAS
VALUES('ROCKY I',1978,'Sylvester Stallone','Starring',86700);
INSERT INTO PROTAGONISTAS
VALUES('ROCKY II',1981,'Sylvester Stallone','Starring',57700);
INSERT INTO PROTAGONISTAS
VALUES('ROCKY III',1987,'Sylvester Stallone','Starring',786700);
INSERT INTO PROTAGONISTAS
VALUES('ROCKY IV',1999,'Sylvester Stallone','Starring',686700);
INSERT INTO PROTAGONISTAS
VALUES('ROCKY BALBOA',2006,'Sylvester Stallone','Starring',886700);
INSERT INTO PROTAGONISTAS
VALUES('ROCKY III',1987,'Linda Blair','Costarring',null);
INSERT INTO PROTAGONISTAS
VALUES('ROCKY IV',1999,'Linda Blair','Starring',null);
INSERT INTO PROTAGONISTAS
VALUES('RAMBO III',1988,'Russell Crowe','Starring',16700);
INSERT INTO PROTAGONISTAS
VALUES('ROCKY I',1978,'Carl Weathers','Costarring',86700);
INSERT INTO PROTAGONISTAS
VALUES('ROCKY II',1981,'Carl Weathers','Starring',86700);
INSERT INTO PROTAGONISTAS
VALUES('GLADIATOR',2001,'Charles Napier','Costarring',86700);
INSERT INTO PROTAGONISTAS
VALUES('GLADIATOR',2001,'Charles Napier','Costarring',86700);
INSERT INTO PROTAGONISTAS
VALUES('GLADIATOR',2001,'Charles Napier','Costarring',86700);
INSERT INTO PROTAGONISTAS
VALUES('GLADIATOR',2001,'Charles Napier','Costarring',86700);
INSERT INTO PROTAGONISTAS
VALUES('GLADIATOR',2001,'Charles Napier','Costarring',86700);
INSERT INTO PROTAGONISTAS
VALUES('GLADIATOR',2001,'Charles Napier','Costarring',86700);
INSERT INTO PROTAGONISTAS
VALUES('GLADIATOR',2001,'Charles Napier','Costarring',86700);
INSERT INTO PROTAGONISTAS
VALUES('GLADIATOR',2001,'Charles Napier','Costarring',86700);
INSERT INTO PROTAGONISTAS
VALUES('GLADIATOR',2001,'Charles Napier','Costarring',86700);
INSERT INTO PROTAGONISTAS
VALUES('GLADIATOR',2001,'Charles Napier','Costarring',86700);
INSERT INTO PROTAGONISTAS
VALUES('GLADIATOR',2001,'Charles Napier','Costarring',86700);
INSERT INTO PROTAGONISTAS
VALUES('GLADIATOR',2001,'Charles Napier','Costarring',86700);
INSERT INTO PROTAGONISTAS
VALUES('GLADIATOR',2001,'Charles Napier','Costarring',86700);
INSERT INTO PROTAGONISTAS
VALUES('GLADIATOR',2000,'Charles Napier','Costarring',86700);
INSERT INTO PROTAGONISTAS
VALUES('GLADIATOR',2000,'Charles Napier','Costarring',86700);
INSERT INTO PROTAGONISTAS
VALUES('GLADIATOR',2000,'Charles Napier','Costarring',86700);
INSERT INTO PROTAGONISTAS
VALUES('GLADIATOR',2000,'Charles Napier','Costarring',86700);
INSERT INTO PROTAGONISTAS
VALUES('GLADIATOR',2000,'Charles Napier','Costarring',86700);
INSERT INTO PROTAGONISTAS
VALUES('GLADIATOR',2000,'Charles Napier','Costarring',86700);
INSERT INTO PROTAGONISTAS
VALUES('GLADIATOR',2000,'Charles Napier','Costarring',86700);
INSERT INTO PROTAGONISTAS
VALUES('GLADIATOR',2000,'Charles Napier','Costarring',86700);
INSERT INTO PROTAGONISTAS
VALUES('GLADIATOR',2000,'Charles Napier','Costarring',86700);
INSERT INTO PROTAGONISTAS
VALUES('GLADIATOR',2000,'Charles Napier','Costarring',86700);
INSERT INTO PROTAGONISTAS
VALUES('GLADIATOR',2000,'Charles Napier','Costarring',86700);
INSERT INTO PROTAGONISTAS
VALUES('GLADIATOR',2000,'Charles Napier','Costarring',86700);
INSERT INTO PROTAGONISTAS
VALUES('GLADIATOR',2000,'Russell Crowe','Starring',34566);
INSERT INTO PROTAGONISTAS
VALUES('GLADIATOR',2000,'Connie Nielsen','Costarring',22345);
INSERT INTO PROTAGONISTAS
VALUES('GLADIATOR',2000,'Charles Napier','Costarring',86700);
INSERT INTO PROTAGONISTAS
VALUES('GLADIATOR',2003,'Charles Napier','Costarring',86700);
INSERT INTO PROTAGONISTAS
VALUES('GLADIATOR',2003,'Charles Napier','Costarring',86700);
INSERT INTO PROTAGONISTAS
VALUES('GLADIATOR',2003,'Charles Napier','Costarring',86700);
INSERT INTO PROTAGONISTAS
VALUES('GLADIATOR',2003,'Charles Napier','Costarring',86700);
INSERT INTO PROTAGONISTAS
VALUES('GLADIATOR',2003,'Charles Napier','Costarring',86700);
INSERT INTO PROTAGONISTAS
VALUES('GLADIATOR',2003,'Charles Napier','Costarring',86700);
INSERT INTO PROTAGONISTAS
VALUES('GLADIATOR',2003,'Charles Napier','Costarring',86700);
INSERT INTO PROTAGONISTAS
VALUES('GLADIATOR',2003,'Charles Napier','starring',86700);
INSERT INTO PROTAGONISTAS
VALUES('GLADIATOR',2003,'Charles Napier','starring',86700);
INSERT INTO PROTAGONISTAS
VALUES('GLADIATOR',2003,'Charles Napier','starrig',86700);
INSERT INTO PROTAGONISTAS
VALUES('GLADIATOR',2003,'Charles Napier','Starring',86700);
INSERT INTO PROTAGONISTAS
VALUES('GLADIATOR',2003,'Russell Crowe','Starring',34566);
INSERT INTO PROTAGONISTAS
VALUES('GLADIATOR',2003,'Connie Nielsen','Starring',22345);
INSERT INTO PROTAGONISTAS
VALUES('CASINO',1995,'Robert De Niro','Starring',98585);
INSERT INTO PROTAGONISTAS
VALUES('CASINO',1995,'Sharon Stone','Starring',889585);
INSERT INTO PROTAGONISTAS
VALUES('CASINO',1995,'Sharon Stone','Starring',889585);
INSERT INTO PROTAGONISTAS
VALUES('EL ULTIMO SAMURAI',2005,'Tom Cruise','Starring',889585);


---------------------------------------------------------------------------------------------------------------------

INSERT INTO CINES
VALUES('CINECOLOMBIA', 'COLOMBIA','BOGOTA',900);
INSERT INTO CINES
VALUES('CINEMARK', 'CHILE','VALPARAISO',905);
INSERT INTO CINES
VALUES('CINEMARK', 'COLOMBIA','BOGOTA',789);
INSERT INTO CINES
VALUES('CINETOK', 'ARGENTINA','BUENOS AIRES',898);
INSERT INTO CINES
VALUES('CINEMARK', 'COLOMBIA','MEDELLIN',903);
INSERT INTO CINES
VALUES('CINECOLOMBIA', 'COLOMBIA','MEDELLIN',900);
INSERT INTO CINES
VALUES('CINECOLOMBIA', 'COLOMBIA','BARRANQUILLA',1000);

----------------------------------------------------------------------------------------------------------------------
--Proyecciones(titulo V2(35), ano N(4),Cine V2(35) ,pais V2(35),ciudad V2(35),fecha D)

INSERT INTO PROYECCIONES
VALUES('Rambo II:First Blood',1985,'CINECOLOMBIA', 'COLOMBIA','BOGOTA',TO_DATE('15/08/1985','DD/MM/YYYY'));
INSERT INTO PROYECCIONES
VALUES('EL PADRINO II',1974,'CINECOLOMBIA', 'COLOMBIA','BOGOTA',TO_DATE('01/01/1985','DD/MM/YYYY'));
INSERT INTO PROYECCIONES
VALUES('EL PADRINO II',1974,'CINETOK', 'ARGENTINA','BUENOS AIRES',TO_DATE('01/07/1985','DD/MM/YYYY'));
INSERT INTO PROYECCIONES
VALUES('Rambo II:First Blood',1985,'CINECOLOMBIA', 'COLOMBIA','BOGOTA',TO_DATE('21/01/1985','DD/MM/YYYY'));
INSERT INTO PROYECCIONES
VALUES('EL PADRINO II',1974,'CINECOLOMBIA', 'COLOMBIA','MEDELLIN',TO_DATE('11/01/1985','DD/MM/YYYY'));
INSERT INTO PROYECCIONES
VALUES('GLADIATOR',2000,'CINETOK','ARGENTINA','BUENOS AIRES',TO_DATE('01/07/2000','DD/MM/YYYY'));
INSERT INTO PROYECCIONES
VALUES('GLADIATOR',2000,'CINETOK','ARGENTINA','BUENOS AIRES',TO_DATE('01/04/2001','DD/MM/YYYY'));
INSERT INTO PROYECCIONES
VALUES('TITANIC',1997,'CINECOLOMBIA', 'COLOMBIA','BOGOTA',TO_DATE('30/09/1997','DD/MM/YYYY'));
INSERT INTO PROYECCIONES
VALUES('EL PADRINO II',1974,'CINECOLOMBIA', 'COLOMBIA','BOGOTA',TO_DATE('01/01/1985','DD/MM/YYYY'));
INSERT INTO PROYECCIONES
VALUES('EL PADRINO II',1974,'CINETOK', 'ARGENTINA','BUENOS AIRES',TO_DATE('01/07/1985','DD/MM/YYYY'));
INSERT INTO PROYECCIONES
VALUES('Rambo II:First Blood',1985,'CINEMARK', 'CHILE','VALPARAISO',TO_DATE('01/01/1985','DD/MM/YYYY'));
INSERT INTO PROYECCIONES
VALUES('LA GUERRA DE LAS GALAXIAS',1977,'CINEMARK', 'CHILE','VALPARAISO',TO_DATE('11/01/1978','DD/MM/YYYY'));
INSERT INTO PROYECCIONES
VALUES('LA GUERRA DE LAS GALAXIAS',1977,'CINETOK','ARGENTINA','BUENOS AIRES',TO_DATE('11/10/1977','DD/MM/YYYY'));
INSERT INTO PROYECCIONES
VALUES('LA GUERRA DE LAS GALAXIAS',1977,'CINECOLOMBIA', 'COLOMBIA','MEDELLIN',TO_DATE('31/12/1978','DD/MM/YYYY'));
INSERT INTO PROYECCIONES
VALUES('STUART LITTLE',2005,'CINETOK','ARGENTINA','BUENOS AIRES',TO_DATE('11/10/2005','DD/MM/YYYY'));
INSERT INTO PROYECCIONES
VALUES('STUART LITTLE',2005,'CINECOLOMBIA', 'COLOMBIA','MEDELLIN',TO_DATE('31/12/2005','DD/MM/YYYY'));
INSERT INTO PROYECCIONES
VALUES('PIRATAS DEL CARIBE',2004,'CINEMARK', 'CHILE','VALPARAISO',TO_DATE('11/03/2004','DD/MM/YYYY'));
INSERT INTO PROYECCIONES
VALUES('PIRATAS DEL CARIBE',2004,'CINETOK','ARGENTINA','BUENOS AIRES',TO_DATE('11/10/2004','DD/MM/YYYY'));
INSERT INTO PROYECCIONES
VALUES('LA GUERRA DE LAS GALAXIAS',1977,'CINECOLOMBIA', 'COLOMBIA','MEDELLIN',TO_DATE('30/06/1978','DD/MM/YYYY'));
INSERT INTO PROYECCIONES
VALUES('STUART LITTLE',2005,'CINETOK','ARGENTINA','BUENOS AIRES',TO_DATE('11/10/2005','DD/MM/YYYY'));
INSERT INTO PROYECCIONES
VALUES('PIRATAS DEL CARIBE',2004,'CINEMARK','COLOMBIA','MEDELLIN',TO_DATE('31/12/2004','DD/MM/YYYY'));
INSERT INTO PROYECCIONES
VALUES('2001-ODISEA DEL ESPACIO',1968,'CINECOLOMBIA', 'COLOMBIA','MEDELLIN',TO_DATE('11/04/1968','DD/MM/YYYY'));
INSERT INTO PROYECCIONES
VALUES('LA PROFECIA',1986,'CINETOK','ARGENTINA','BUENOS AIRES',TO_DATE('01/07/1987','DD/MM/YYYY'));
INSERT INTO PROYECCIONES
VALUES('LA PLAYA',2000,'CINETOK','ARGENTINA','BUENOS AIRES',TO_DATE('01/04/2001','DD/MM/YYYY'));
INSERT INTO PROYECCIONES
VALUES('CASABLANCA',1942,'CINECOLOMBIA', 'COLOMBIA','BOGOTA',TO_DATE('30/09/1948','DD/MM/YYYY'));
INSERT INTO PROYECCIONES
VALUES('CASABLANCA',1942,'CINECOLOMBIA', 'COLOMBIA','BOGOTA',TO_DATE('01/01/1949','DD/MM/YYYY'));
INSERT INTO PROYECCIONES
VALUES('LA PROFECIA',1986,'CINETOK', 'ARGENTINA','BUENOS AIRES',TO_DATE('12/07/1987','DD/MM/YYYY'));
INSERT INTO PROYECCIONES
VALUES('Rambo II:First Blood',1985,'CINEMARK', 'CHILE','VALPARAISO',TO_DATE('01/01/1985','DD/MM/YYYY'));
INSERT INTO PROYECCIONES
VALUES('CASABLANCA',1942,'CINEMARK','CHILE','VALPARAISO',TO_DATE('11/01/1945','DD/MM/YYYY'));
INSERT INTO PROYECCIONES
VALUES('2001-ODISEA DEL ESPACIO',1968,'CINETOK','ARGENTINA','BUENOS AIRES',TO_DATE('11/10/1969','DD/MM/YYYY'));

-------------------------------------------------------------------------------------------------------------------------
INSERT INTO GANADOR_OSCAR
VALUES('GLADIATOR',2000,76,'Russell Crowe','James Cameron',null,TO_DATE('05/05/2001','DD/MM/YYYY'));
INSERT INTO GANADOR_OSCAR
VALUES('CASABLANCA',1942,16,null,'Martin Scorsese','MARIO EL A',TO_DATE('15/05/1943','DD/MM/YYYY'));
INSERT INTO GANADOR_OSCAR
VALUES('LA PROFECIA',1986,36,null,'Francis Ford Coppola',null,TO_DATE('15/05/1987','DD/MM/YYYY'));
INSERT INTO GANADOR_OSCAR
VALUES('EL PADRINO',1972,6,'Marlon Brando','Francis Ford Coppola',null,TO_DATE('15/05/1973','DD/MM/YYYY'));
INSERT INTO GANADOR_OSCAR
VALUES('GLADIATOR',2000,76,'Marlon Brando',null,null,TO_DATE('05/05/2001','DD/MM/YYYY'));
INSERT INTO GANADOR_OSCAR
VALUES('CASABLANCA',1942,16,null,'Martin Scorsese','MARIO EL A',TO_DATE('15/05/1943','DD/MM/YYYY'));
INSERT INTO GANADOR_OSCAR
VALUES('STUART LITTLE',2005,22,null,'Francis Ford Coppola',null,TO_DATE('15/05/2006','DD/MM/YYYY'));
INSERT INTO GANADOR_OSCAR
VALUES('EL REY LEON',1999,26,null,null,'MARIO EL E',TO_DATE('25/05/1997','DD/MM/YYYY'));

---------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------
INSERT INTO DOBLAJES
VALUES('GLADIATOR',2000,'Russell Crowe','COLD SEVERS',566);
INSERT INTO DOBLAJES
VALUES('GLADIATOR',2000,'Russell Crowe','COLD SEVERS',567);
INSERT INTO DOBLAJES
VALUES('GLADIATOR',2000,'Russell Crowe','COLD SEVERS',569);
INSERT INTO DOBLAJES
VALUES('GLADIATOR',2000,'Russell Crowe','MARIO FERRAGAMO',579);
INSERT INTO DOBLAJES
VALUES('GLADIATOR',2000,'Russell Crowe','MARIO FERRAGAMO',600);
INSERT INTO DOBLAJES
VALUES('GLADIATOR',2000,'Russell Crowe','COLD SEVERS',602);
INSERT INTO DOBLAJES
VALUES('RAMBO III',1988,'Sylvester Stallone','COLD SEVERS',300);
INSERT INTO DOBLAJES
VALUES('RAMBO III',1988,'Sylvester Stallone','COLD SEVERS',100);
INSERT INTO DOBLAJES
VALUES('EL ULTIMO SAMURAI',2005,'Tom Cruise','COLD SEVERS',100);



-----------------------------------------------------------------------------------------------------------------------------
INSERT INTO RODAJES
VALUES('GLADIATOR',2000,'ITALIA','COLISEO ROMANO',NULL);
INSERT INTO RODAJES
VALUES('GLADIATOR',2000,'GRECIA','BOSQUES GRIEGOS',NULL);
INSERT INTO RODAJES
VALUES('GLADIATOR',2000,'ESPA�A','BOSQUES ESPESOS',NULL);
INSERT INTO RODAJES
VALUES('LA PLAYA',2000,'EEUU','NEW YORK',TO_DATE('03/09/1999','DD/MM/YYYY'));
INSERT INTO RODAJES
VALUES('LA PLAYA',2000,'EEUU',null,TO_DATE('03/06/1998','DD/MM/YYYY'));
INSERT INTO RODAJES
VALUES('LA PLAYA',2000,'TOKIO',null,TO_DATE('03/06/1999','DD/MM/YYYY'));
INSERT INTO RODAJES
VALUES('LA PROFECIA',1986,'EEUU','MIAMI',TO_DATE('30/06/1984','DD/MM/YYYY'));
INSERT INTO RODAJES
VALUES('LA PROFECIA',1986,'EEUU','NEW YORK',TO_DATE('03/07/1984','DD/MM/YYYY'));
INSERT INTO RODAJES
VALUES('EL PADRINO',1972,'ITALIA','PENINSULA IBERICA',TO_DATE('03/08/1971','DD/MM/YYYY'));
INSERT INTO RODAJES
VALUES('EL PADRINO',1972,'ITALIA',null,TO_DATE('03/05/1971','DD/MM/YYYY'));
INSERT INTO RODAJES
VALUES('ROCKY II',1981,'EEUU','CHICAGO',TO_DATE('23/06/1981','DD/MM/YYYY'));
INSERT INTO RODAJES
VALUES('ROCKY II',1981,'EEUU',null,TO_DATE('13/08/1981','DD/MM/YYYY'));
INSERT INTO RODAJES
VALUES('ROCKY IV',1999,'RUSIA',null,TO_DATE('03/06/1999','DD/MM/YYYY'));
INSERT INTO RODAJES
VALUES('ROCKY IV',1999,'RUSIA','PIRINEOS',TO_DATE('03/06/1999','DD/MM/YYYY'));
INSERT INTO RODAJES
VALUES('Rambo II:First Blood',1985,'ARABIA SAUDITA',null,TO_DATE('01/06/1985','DD/MM/YYYY'));
INSERT INTO RODAJES
VALUES('Rambo II:First Blood',1985,'EGIPTO',null,TO_DATE('01/08/1985','DD/MM/YYYY'));
INSERT INTO RODAJES
VALUES('Rambo II:First Blood',1985,'ARABIA SAUDITA',null,TO_DATE('01/10/1985','DD/MM/YYYY'));
INSERT INTO RODAJES
VALUES('Rambo II:First Blood',1985,'AFRICA',null,TO_DATE('30/12/1985','DD/MM/YYYY'));
INSERT INTO RODAJES
VALUES('ROCKY BALBOA',2006,'EEUU','LAS VEGAS',TO_DATE('30/03/2005','DD/MM/YYYY'));


-------------------------------------------------------------------------------------------------------------------

INSERT INTO SECUELAS
VALUES('EL PADRINO',1972,'EL PADRINO II',1974,'Secuela del exito de los 70''s');
INSERT INTO SECUELAS
VALUES('EL PADRINO',1972,'EL PADRINO II',1974,'Proyeccion especial en festival SUNDANCE 3D');
INSERT INTO SECUELAS
VALUES('RAMBO I:ACORRALADO',1982,'ROCKY IV',1999,'Ultima pelicula de JHON RAMBO');
INSERT INTO SECUELAS
VALUES('Rambo II:First Blood',1985,'RAMBO III',1988,'Esta vez es por el mismo');
INSERT INTO SECUELAS
VALUES('RAMBO I:ACORRALADO',1982,'Rambo II:First Blood',1985,'Secuela del exito de los 80''s');
INSERT INTO SECUELAS
VALUES('EL PADRINO',1972,'EL PADRINO III',1984,'Tercera entrega de la mafia Italiana');
INSERT INTO SECUELAS
VALUES('ROCKY I',1978,'ROCKY II',1981,'Apolo vs Rocky');
INSERT INTO SECUELAS
VALUES('ROCKY II',1981,'ROCKY III',1987,'Aparicion de Mr.T');
INSERT INTO SECUELAS
VALUES('ROCKY III',1987,'ROCKY IV',1999,'Defensa en Rusia');
INSERT INTO SECUELAS
VALUES('ROCKY IV',1999,'ROCKY BALBOA',2006,'Ultima entrega');


------------------------------------------------------------------------------------------------------------------------

commit;