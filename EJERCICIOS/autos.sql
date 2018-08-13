create database autos
use autos

CREATE TABLE [dbo].[modelos] (
[id_marca] int foreign key ([id_marca]) references marcas(id),
[id] int,
[Nombre] varchar(23),
[slug] varchar(23)
)

--#1
select a.nombre,count(b.id) as cantidad from marcas a, modelos b where a.id=b.id_marca
group by a.nombre
--#2
alter table marcas
add num_mod int
--#3
begin transaction
--#4
update marcas 
set num_mod=(select count(b.id) as cantidad from modelos b where b.id_marca=1) 
where id=1
--#5
commit
rollback

