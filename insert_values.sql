-- Correcto
INSERT INTO campus(id_campus, nombre)
VALUES
	(1, 'Madrid'),
	(2, 'Barcelona'),
	(3, 'Valencia');

-- Correcto
INSERT INTO verticales(id_vertical, nombre)
VALUES
	(1, 'Data Science'),
	(2, 'Full Stack'),
	(3, 'Data Analytics');

-- Correcto
INSERT INTO proyectos(id_proyecto, nombre)
VALUES
	(1, 'Proyecto_HLF'), 
	(2, 'Proyecto_EDA'), 
	(3, 'Proyecto_BBDD'), 
	(4, 'Proyecto_ML'), 
	(5, 'Proyecto_Deployment'), 
	(6, 'Proyecto_WebDev'), 
	(7, 'Proyecto_FrontEnd'), 
	(8, 'Proyecto_Backend'), 
	(9, 'Proyecto_React'), 
	(10, 'Proyecto_FullStack');

-- Hablar con los muchachones
INSERT INTO promociones(id_promocion, nombre, fecha_comienzo, id_campus)
VALUES
    (1, 'Septiembre', '18/9/2023'),
    (2, 'Febrero', '12/2/2024');

INSERT INTO claustro(id_claustro, nombre_completo, id_vertical, modalidad,rol)
VALUES
	(1, 'Noa Yáñez', 1, 'Presencial', 'TA'), 
	(2, 'Saturnina Benitez', 1, 'Presencial', 'TA'), 
	(3, 'Anna Feliu', 2, 'Presencial', 'TA'), 
	(4, 'Rosalva Ayuso', 2, 'Presencial', 'TA'), 
	(5, 'Ana Sofía Ferrer', 2, 'Presencial', 'TA'), 
	(6, 'Angélica Corral', 2, 'Presencial', 'TA'), 
	(7, 'Ariel Lledó', 1, 'Presencial', 'TA'), 
	(8, 'Mario Prats', 2, 'Online', 'LI'), 
	(9, 'Luis Ángel Suárez', 2, 'Online', 'LI'), 
	(10, 'María Dolores Diaz', 1, 'Online', 'LI');
