-- 1. Obtener los nombres de todos los alumnos junto con el nombre de la promoción a la que pertenecen.
select 
	a.nombre_completo, concat(p.nombre,' ', extract(year from p.fecha_comienzo)) as Promocion
from 
	alumnos as a
inner join 
	alum_prom as ap on a.id_alumno = ap.id_alumno
inner join 
	promociones as p on ap.id_promocion = p.id_promocion;
-- 2. Listar los proyectos que han sido realizados por alumnos de la promoción de Septiembre 2023.
select 
	a.nombre_completo, concat(p.nombre,' ', extract(year from p.fecha_comienzo)) as promocion,
	pr.nombre as Proyecto
from 
	alumnos as a
inner join
	alum_prom as ap on a.id_alumno = ap.id_alumno
inner join 
	promociones as p on ap.id_promocion = p.id_promocion
inner join 
	resultado_proyectos as rp on a.id_alumno = rp.id_alumno
inner join 
	proyectos as pr on rp.id_proyecto = pr.id_proyecto
where 
	extract(year from p.fecha_comienzo) = 2023
limit 5;

-- 3. Encontrar el número total de alumnos en cada promoción.
select 
    concat(p.nombre, ' ', extract(year from p.fecha_comienzo)) as Promocion, 
    count(a.id_alumno)
from 
    alumnos as a
inner join 
    alum_prom as ap on a.id_alumno = ap.id_alumno
inner join 
    promociones as p on ap.id_promocion = p.id_promocion
group by Promocion;

-- 4. Obtener los nombres de los instructores (TA) que están asociados a promociones del campus de Madrid.
select 
	c.nombre_completo, c.rol, concat(p.nombre, ' ', extract(year from p.fecha_comienzo)) as Promocion,
	campus.nombre
from 
	claustro as c
inner join promocion_asociada as pr on c.id_claustro = pr.id_claustro
inner join promociones as p on pr.id_promocion = p.id_promocion
inner join campus on pr.id_campus = campus.id_campus
where c.rol like '%TA%' and campus.nombre = 'Madrid';

-- 5. Listar los proyectos de la vertical "DS" y los alumnos que los han completado con la calificación "Apto".
select 
	a.nombre_completo, v.nombre as vertical, pr.nombre proyecto, rp.calificacion
from 
	alumnos as a
inner join 
	resultado_proyectos as rp on a.id_alumno = rp.id_alumno
inner join 
	proyectos as pr on rp.id_proyecto = pr.id_proyecto
inner join 
	verticales as v on pr.id_vertical = v.id_vertical
where v.nombre = 'DS' and calificacion = 'Apto'
order by a.nombre_completo asc;
-- 6. Obtener el número de proyectos completados por cada alumno.
select 
	a.nombre_completo, count(rp.calificacion) proyectos_completados
from 
	alumnos as a
inner join 
	resultado_proyectos as rp on a.id_alumno = rp.id_alumno
inner join 
	proyectos as pr on rp.id_proyecto = pr.id_proyecto
inner join 
	verticales as v on pr.id_vertical = v.id_vertical
where calificacion = 'Apto'
group by a.nombre_completo;
-- 7. Listar los alumnos que no han sido declarados "Apto" en el proyecto "Proyecto_BBDD".
select 
	a.nombre_completo, v.nombre as vertical, pr.nombre proyecto, rp.calificacion
from 
	alumnos as a
inner join 
	resultado_proyectos as rp on a.id_alumno = rp.id_alumno
inner join 
	proyectos as pr on rp.id_proyecto = pr.id_proyecto
inner join 
	verticales as v on pr.id_vertical = v.id_vertical
where calificacion = 'No Apto' and pr.nombre = 'Proyecto_BBDD'
order by a.nombre_completo asc;
