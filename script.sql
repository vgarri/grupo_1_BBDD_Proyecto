DROP TABLE IF EXISTS campus,proyectos,promociones,verticales,alumnos,claustro,resultado_proyectos,promocion_asociada,alum_prom CASCADE;

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
  modalidad varchar(100) NOT NULL,
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
