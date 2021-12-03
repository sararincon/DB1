
--Creando base de dato
DROP DATABASE Posts;
CREATE DATABASE Posts;
--conectarse a la base de dato 
\c posts
--Creando una tabla 
CREATE TABLE post (id INT, 
nombre_de_usuario VARCHAR(25), 
fecha_de_creacion DATE, 
contenido VARCHAR(100), 
descripcion VARCHAR(100), 
PRIMARY KEY(id));

-- Insertar 3 post, 2 para el usuario "Pamela" y uno para "Carlos.

INSERT INTO post(id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion)
VALUES (1, 'Pamela', '2021-11-30', 'Post 1', 'Descripcion de Post 1.');

INSERT INTO post(id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion)
VALUES (2, 'Pamela', '2021-11-30', 'Post 2', 'Descripcion de Post 2.');

INSERT INTO post(id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion)
VALUES (3, 'Carlos', '2021-11-30', 'Post de Carlos', 'Descripcion de Post de Carlos.');

-- Modificar la tabla post, agregando la columna título.

ALTER TABLE post ADD titulo VARCHAR(255);

--Agregar título a las publicaciones ya ingresadas. 

UPDATE post SET titulo = 'Soy un titulo';

-- Insertar 2 post para el usuario "Pedro"

INSERT INTO post(id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo)
VALUES (4, 'Pedro', '2021-11-30', 'Post de Pedro', 'Descripcion de Post Pedro.', 'Soy un titulo Pedro4');

INSERT INTO post(id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo)
VALUES (5, 'Pedro', '2021-11-30', 'Post de Pedro 2', 'Descripcion de Post Pedro 2.', 'Soy un titulo Pedro5');

-- Eliminar el post de Carlos.

DELETE FROM post WHERE nombre_de_usuario = 'Carlos'; 

-- Ingresar un nuevo post para el usuario "Carlos".
INSERT INTO post(id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo)
VALUES (6, 'Carlos', '2021-11-30', 'Post de Carlos 2', 'Descripcion de Post de Carlos 2.', 'Soy un titulo Carlos 2');

CREATE TABLE comments( 
    id SERIAL, 
    fecha_de_creacion TIMESTAMP, 
    content VARCHAR(255),  
    post_id INT, 
    PRIMARY KEY(id),
    FOREIGN KEY(post_id) REFERENCES post(id)
    );

--id, fecha, hora decreación y contenido,

INSERT INTO comments(fecha_de_creacion,content,post_id) VALUES ('2021-12-31 19:38:00','HOLA SOY UN CONTENIDO',1);







