create database [inmuebles]
use [inmuebles]
select * from inmuebles.sys.tables
select * from inmuebles.sys.columns where object_id= 2105058535
select * from inmuebles.sys.types where system_type_id=56

--seleccionar todos los registros de una tabla
select * from BDInmueble

--seleccionar columnas especificas de una tabla

select referencia,[Fecha Venta],Vendedor from bdinmueble
select inx.Referencia,inx.[Fecha Venta],inx.Vendedor from bdinmueble inx

--seleccionar registros por condicionales

select * from bdinmueble where Vendedor='Carmen'

--Opraciones sobre columnas

select COUNT(*) from bdinmueble
select SUM([Precio Venta]) from bdinmueble
select AVG(superficie) from bdinmueble
select Vendedor from bdinmueble group by vendedor



