-- Correcto
INSERT INTO campus(id_campus, nombre)
VALUES
	(1, 'Madrid'),
	(2, 'Barcelona'),
	(3, 'Valencia');

-- Correcto
INSERT INTO verticales(id_vertical, nombre)
VALUES
	(1, 'DS'),
	(2, 'FS');

-- Correcto
INSERT INTO proyectos(id_proyecto, nombre, id_vertical)
VALUES
	(1, 'Proyecto_HLF', 1), 
	(2, 'Proyecto_EDA', 1), 
	(3, 'Proyecto_BBDD', 1), 
	(4, 'Proyecto_ML', 1), 
	(5, 'Proyecto_Deployment', 1), 
	(6, 'Proyecto_WebDev', 2), 
	(7, 'Proyecto_FrontEnd', 2), 
	(8, 'Proyecto_Backend', 2), 
	(9, 'Proyecto_React', 2), 
	(10, 'Proyecto_FullStack', 2);

-- Correcto
INSERT INTO promociones(id_promocion, nombre, fecha_comienzo)
VALUES
    (1, 'Septiembre', '18/9/2023'),
    (2, 'Febrero', '12/2/2024');
select *
from promociones

INSERT INTO claustro(id_claustro, nombre_completo, email, id_vertical, modalidad,rol)
VALUES
	(1, 'Noa Yáñez', 'noayanez@dominio.com', 1, 'Presencial', 'TA'),
 	(2, 'Saturnina Benitez', 'saturtinabenitez@dominio.com', 1, 'Presencial', 'TA'),
 	(3, 'Anna Feliu', 'annafeliu@dominio.com', 2, 'Presencial', 'TA'),
 	(4, 'Rosalva Ayuso', 'rosalvaayuso@dominio.com', 2, 'Presencial', 'TA'),
 	(5, 'Ana Sofía Ferrer', 'anasofiaferrer@dominio.com', 2, 'Presencial', 'TA'),
 	(6, 'Angélica Corral', 'angelicacorral@dominio.com', 2, 'Presencial', 'TA'),
 	(7, 'Ariel Lledó', 'ariellledo@dominio.com', 1, 'Presencial', 'TA'),
 	(8, 'Mario Prats', 'marioprats@dominio.com', 2, 'Online', 'LI'),
 	(9, 'Luis Ángel Suárez', 'luisangelsuarez@dominio.com', 2, 'Online', 'LI'),
 	(10, 'María Dolores Diaz', 'mariadoloresdiaz@dominio.com', 1, 'Online', 'LI');

INSERT INTO alumnos(id_alumno, nombre_completo, email, modalidad)
VALUES
