--Exam2

select COUNT(*) from bdinmueble i where i.Vendedor='Carmen'
select SUM([Precio Venta]) from bdinmueble where [Fecha Venta] between '01/01/2004' and '31/12/2004'
select AVG(superficie) from bdinmueble where superficie > 170
select Tipo, COUNT(*) from bdinmueble where vendedor='Carmen' group by Tipo

--Exam3
select a.nombre, b.nombre from marcas a, modelos b where a.id=b.id_marca
