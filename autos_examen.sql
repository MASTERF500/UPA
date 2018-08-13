--Index
create index index_id_autos on marcas(id)
go

--View
create view vista_autos
as  
select a.nombre as MARCA, b.nombre as MODELO from marcas a, modelos b where a.id=b.id_marca
go

select MARCA, COUNT(MARCA) CANTIDAD from vista_autos group by MARCA
go

--Store Procedure
create procedure nueva_marca(@id int,@nom varchar(255))
as
begin
	insert into marcas(id,Nombre)values(@id, @nom)
end
go

exec nueva_marca 532,'VITOM'
go
--Trigger
create table historial(id int primary key identity, tipo varchar(255), descp varchar(500), fecha datetime) 
go

alter trigger after_insert_autos on marcas
after insert
as
begin
	insert into historial (tipo,descp,fecha)values(
	 'Insert',
	 'La marca:'+(select i.Nombre from inserted i) +' id:'+Convert(varchar,(select i.id from inserted i))+' se ha insertado el Día '+ Convert(varchar,(Datepart(day,Getdate()))) +' a las '+Convert(varchar,(datepart(hour,getdate()))),
	 getdate() 
	)
	print ('SE INSERTO EXITOSAMENTE 1 REGISTRO')
end
go

select * from historial

