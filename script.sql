DROP TABLE IF EXISTS campus,proyectos,promociones,verticales,alumnos,claustro,resultado_proyectos,promocion_asociada, CASCADE;

-- Crear tabla campus .
CREATE TABLE campus(
  id_campus serial NOT NULL PRIMARY KEY, 
  nombre varchar(45) NOT NULL
);



-- Crear tabla promociones .
CREATE TABLE promociones(
  id_promocion serial NOT NULL PRIMARY KEY, 
  nombre varchar(45) NOT NULL, 
  fecha_comienzo date NOT NULL

);

-- Crear tabla verticales .
CREATE TABLE verticales(
  id_vertical serial NOT NULL PRIMARY KEY, 
  nombre varchar(45) NOT NULL
);
-- Crear tabla proyectos .
CREATE TABLE proyectos(
  id_proyecto serial NOT NULL PRIMARY KEY, 
  nombre varchar(45) NOT NULL,
  id_vertical int NOT NULL,
  FOREIGN KEY (id_vertical) REFERENCES verticales(id_vertical)

);

-- Crear tabla alumnos .
CREATE TABLE alumnos(
  id_alumno serial NOT NULL PRIMARY KEY, 
  nombre_completo varchar(45) NOT NULL, 
  email varchar(100) NOT NULL UNIQUE,
  modalidad varchar(100) NOT NULL
);
-- Crear tabla alumnos
CREATE TABLE alum_prom (
  id_alumno int NOT NULL , 
  id_promocion int NOT NULL,
  FOREIGN KEY (id_alumno) REFERENCES alumnos(id_alumno),
  FOREIGN KEY (id_promocion) REFERENCES promociones(id_promocion)
);


-- Crear tabla claustro .
CREATE TABLE claustro(
  id_claustro serial NOT NULL PRIMARY KEY, 
  nombre_completo varchar(45) NOT NULL, 
  email varchar(100) NOT NULL UNIQUE,
  id_vertical int NOT NULL,
  rol varchar(100) NOT NULL,
  FOREIGN KEY (id_vertical) REFERENCES verticales(id_vertical)
);


-- Crear tabla resultado proyectos (tabla intermedia) .
CREATE TABLE resultado_proyectos(
  id_proyecto int NOT NULL, 
  id_alumno int NOT NULL,
  calificacion varchar(45),
  FOREIGN KEY (id_proyecto) REFERENCES proyectos(id_proyecto),
  FOREIGN KEY (id_alumno) REFERENCES alumnos(id_alumno)
);

-- Crear tabla promocion_asociada (tabla intermedia) .
CREATE TABLE promocion_asociada(
  id_claustro int NOT NULL,
  id_promocion int NOT NULL,
  id_campus int NOT NULL,
  FOREIGN KEY (id_claustro) REFERENCES claustro(id_claustro),
  FOREIGN KEY (id_promocion) REFERENCES promociones(id_promocion),
  FOREIGN KEY (id_campus) REFERENCES campus(id_campus)
);


-- -- Insertar datos en tabla authors
-- INSERT INTO authors(name,surname,email,image)
-- VALUES
-- ('Alejandru','Regex','alejandru@thebridgeschool.es','https://randomuser.me/api/portraits/thumb/men/75.jpg'),
-- ('Birja','Rivera','birja@thebridgeschool.es','https://randomuser.me/api/portraits/thumb/men/60.jpg'),
-- ('Alvaru','Riveru','alvaru@thebridgeschool.es','https://randomuser.me/api/portraits/thumb/men/45.jpg'),
-- ('Muchelle','Wuallus','muchelle@thebridgeschool.es','https://randomuser.me/api/portraits/thumb/women/72.jpg'),
-- ('Albertu','Henriques','albertu@thebridgeschool.es','https://randomuser.me/api/portraits/thumb/men/33.jpg'),
-- ('Guillermu','Develaweyer','guillermu@thebridgeschool.es','https://randomuser.me/api/portraits/thumb/men/34.jpg'),
-- ('Jabier','Hespinoza','jabier@thebridgeschool.es','https://randomuser.me/api/portraits/thumb/men/35.jpg');



-- -- Insertar datos en tabla entries
-- INSERT INTO entries(title,content,id_author,category)
-- VALUES 
-- ('Noticia: SOL en Madrid','Contenido noticia 1',(SELECT id_author FROM authors WHERE email='alejandru@thebridgeschool.es'),'Tiempo'),
-- ('Noticia: Un panda suelto por la ciudad','El panda se comió todas las frutas de una tienda',(SELECT id_author FROM authors WHERE email='birja@thebridgeschool.es'),'Sucesos'),
-- ('El rayo gana la champions','Victoria por goleada en la final de la champions',(SELECT id_author FROM authors WHERE email='albertu@thebridgeschool.es'),'Deportes'),
-- ('Amanece Madrid lleno de arena','La calima satura Madrid de arena. Pérdidas millonarias',(SELECT id_author FROM authors WHERE email='birja@thebridgeschool.es'),'Sucesos'),
-- ('Descubren el motor de agua','Fin de la gasolina. A partir de ahora usaremos agua en nuestros coches',(SELECT id_author FROM authors WHERE email='alvaru@thebridgeschool.es'),'Ciencia');

-- -- Buscar entries por email usuario
-- SELECT * FROM entries WHERE id_author=(SELECT id_author FROM authors WHERE email='alejandru@thebridgeschool.es');


-- -- Buscar datos por email de usuario y cruzar datos
-- SELECT e.title,e.content,e.date,e.category,a.name,a.surname,a.image
-- FROM entries AS e
-- INNER JOIN authors AS a
-- ON e.id_author=a.id_author
-- WHERE a.email='alejandru@thebridgeschool.es'
-- ORDER BY e.title;


-- -- Buscar datos por email de 2 usuarios y cruzar datos
-- SELECT entries.title,entries.content,entries.date,entries.category,authors.name,authors.surname,authors.image
-- FROM entries
-- INNER JOIN authors
-- ON entries.id_author=authors.id_author
-- WHERE authors.email='alejandru@thebridgeschool.es' OR authors.email='alvaru@thebridgeschool.es' OR authors.email='albertu@thebridgeschool.es'
-- ORDER BY entries.title;
