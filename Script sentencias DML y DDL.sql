-- Insertar datos a la tabla `empleados`
Insert into empleados (codigo,nombres,apellidos,direccion,telefono,fecha_nacimiento,id_puesto)
values ('E004','Cesar','Curup','Guatemala','5555´4','1992-01-01',2);

-- mostrar los datos de las tablas
select 
	* 
from 
	puestos;

select 
	* 
from 
	empleados;
    
-- Actualizar datos de las tablas
update empleados set 
codigo = 'E002'
,nombres = 'Julio'
,apellidos = 'Diaz Lopez'
where id_empleados=4;

update empleados set telefono = '2154'
where id_empleados=4;

-- eliminar datos de las tablas
delete from empleados where id_empleados = 4; 

-- consulta para unificar datos de interes de dos tablas diferentes
select 
	e.id_empleados
    ,e.codigo
    ,e.nombres
    ,e.apellidos
    ,e.direccion
    ,e.telefono
    ,e.fecha_nacimiento
    ,p.puesto
from 
	empleados as e		inner join 	puestos as 	p 	on 	e.id_puesto = p.id_puesto;


