/*Crear la base de datos*/
CREATE DATABASE proyectomusica;
/*usando la db*/
use proyectomusica;

CREATE TABLE genero
(
     cod_genero INT(2) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
     tipo_genero VARCHAR(20)
     /*PRIMARY KEY(cod_genero)*/
);

/* insercion de generos */
INSERT INTO genero(tipo_genero)
     VALUES('Rock'),
          ('Pop'),
          ('Jazz'),
          ('Swing');


CREATE TABLE tipo_coleccion
(
     cod_tipo_coleccion INT(2) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
     name_coleccion VARCHAR(20)
     /*PRIMARY KEY(COD_TIPO_COLECCION)*/
);

/* insercion de tipo coleccion */
INSERT INTO tipo_coleccion(name_coleccion)
     VALUES('Recopilatorio'),
          ('sencillo'),
          ('album');

CREATE TABLE artistas
(
     cod_artistas INT(2) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
     name_artistas VARCHAR(30) NOT NULL,
     cod_genero INT(2) UNSIGNED,
     biografia BLOB,
     link VARCHAR(30) NOT NULL,
     /*COD_IMAGEN INT,*/
     /*PRIMARY KEY(COD_ARTISTAS),*/
     CONSTRAINT fk_cod_genero FOREIGN KEY (cod_genero) REFERENCES genero(cod_genero)
     /*CONSTRAINT FK_COD_IMAGEN FOREIGN KEY (COD_IMAGEN) REFERENCES IMAGEN (COD_IMAGEN)*/
);

/* insercion de artistas */
INSERT INTO artistas(name_artistas,cod_genero,link)
     VALUES('SURVIVOR', 1, '/Rock_Survivor.html'),
          ('MICHAEL JACKSON', 2, '/Pop_MichaelJackson.html'),
          ('RAY CHARLES', 3, '/Jazz_RayCharles.html'),
          ('FRANK SINATRA', 4, '/Swing_Sinatra.html'),
          ('TAME IMPALA', 1, '/Rock_TameImpala.html'),
          ('THE WEEKEND', 2,'/Pop_Weeknd.html'),
          ('LOUIS ARMSTRONG', 3, '/Jazz_Louis.html'),
          ('LOUIS PRIMA', 4, '/Swing_Prima.html');


CREATE TABLE coleccion
(
     cod_coleccion INT(2) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
     cod_artistas INT(2) UNSIGNED,
     num_canciones INT(2),
     name_coleccion VARCHAR(30),
     cod_tipo_coleccion INT(2) UNSIGNED,
     anio_coleccion INT(4),
     /*CONSTRAINT COD_COLECCION_PK PRIMARY KEY(COD_COLECCION),*/
     CONSTRAINT fk_cod_artistas FOREIGN KEY (cod_artistas) REFERENCES artistas(cod_artistas),
     CONSTRAINT fk_cod_tipo_coleccion FOREIGN KEY (cod_tipo_coleccion) REFERENCES tipo_coleccion(cod_tipo_coleccion)
);

/* insercion de coleccion */
INSERT INTO coleccion(cod_artistas,num_canciones,name_coleccion,cod_tipo_coleccion,anio_coleccion)
     VALUES(1, 10, 'VITAL SINGS', 3, 1984),
          (1, 33, 'EYE OF THE TIGER', 1, 1982),
          (2, 10, 'THRILLER', 3,'1982'),
          (2, 33, 'DONT STOP TILL', 3, '1979'),
          (3, 22, 'COLLECTION REY', 3, '1962'),
          (3, 33, 'HIT THE ROAD', 1, '1961'),
          (4, 22, 'SINATRA', 3, '1983'),
          (4, 33, 'COME FLY WITH ME', 1, '1958'),
          (5, 10, 'CURRENTS', 3, '2015'),
          (5, 33, 'PATIENCE', 1, '2019'),
          (6, 10, 'MY DEAR MELANCHOLY', 3, '2018'),
          (6, 33, 'CANT FEEL MY FACE', 1, '2015'),
          (7, 10, 'HOT FIVE', 3, '1928'),
          (7, 33, 'JAZZ LIPS', 1, '1926'),
          (8, 22, 'COLLECTION', 3, '1938'),
          (8, 33, 'SING SING SING', 1, '1936');

CREATE TABLE canciones
(
     cod_canciones INT(3) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
     name_canciones VARCHAR(40),
     letra BLOB,
     cod_artistas INT(2) UNSIGNED,
     cod_coleccion INT(2) UNSIGNED,
     /*PREVIO_CANCION ORDSYS.ORDAUDIO,*/
     /*CONSTRAINT COD_CANCIONES_PK PRIMARY KEY(COD_CANCIONES),*/
     CONSTRAINT fk_cod_artistassong FOREIGN KEY (cod_artistas) REFERENCES artistas(cod_artistas),
     CONSTRAINT fk_cod_coleccionsong FOREIGN KEY (cod_coleccion) REFERENCES coleccion(cod_coleccion)
);

/* insercion de canciones */
INSERT INTO canciones(name_canciones,cod_artistas,cod_coleccion)
VALUES('FIRST NIGHT', 1, 1),
     ('HIGH IN YOU', 1, 1),
     ('I CANT HOLD BACK', 1, 1),
     ('EYE OF TIGER', 1, 2),
     ('BEAT IT',2, 3),
     ('BILLIE JEAN',  2, 3),
     ('THRILLER',2, 3),
     ('DONT STOP',2,4),
     ('I CANT STOP',3,5),
     ('IVE GOR A WOMAN', 3,5),
     ('MESS AROUND', 3,5),
     ('HIT THE ROAD',3,6),
     ('NEW YORK', 4, 7),
     ('THE WAY', 4, 7),
     ('YOU MAKE', 4, 7),
     ('COME FLY', 4, 8),
     ('LET IT HAPPEN', 5, 9),
     ('NANGS', 5, 9),
     ('THE LESS I KNOW THE BETTER',5, 9),
     ('PATIENCE', 5, 10),
     ('CALL OUT MY NAME', 6, 11),
     ('TRY ME', 6, 11),
     ('WASTED TIMES', 6, 11),
     ('CAN FEEL MY FACE', 6, 12),
     ('I CANT STOP', 7, 13),
     ('IVE GOR A WOMAN', 7, 13),
     ('MESS AROUND', 7, 13),
     ('HIT THE ROAD', 7, 14),
     ('NEW YORK', 8, 15),
     ('THE WAY', 8, 15),
     ('YOU MAKE', 8, 15),
     ('COME FLY', 8, 16);
