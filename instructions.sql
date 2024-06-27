select NOMBRE
from articulos;

select articulos.NOMBRE, articulos.PRECIO
from articulos;

select PRECIO
from articulos
where PRECIO >= 60 and PRECIO <= 120;

select articulos.NOMBRE, articulos.PRECIO * 166.386 as Pesetas
from articulos;

select avg(PRECIO) as precio_medio
from articulos;

select avg(PRECIO), FABRICANTE
from articulos
where FABRICANTE = 2;

select count(*) as mayor_180
from articulos
where PRECIO >= 180;

select NOMBRE as nombre, PRECIO as precio
from articulos
where PRECIO >= 180
order by PRECIO desc, NOMBRE asc;

select *
from articulos;

select *
from articulos
join fabricantes on articulos.CODIGO = fabricantes.CODIGO;

select articulos.NOMBRE as nombre, articulos.PRECIO as precio, fabricantes.NOMBRE as fabricante
from articulos
join fabricantes on articulos.CODIGO = fabricantes.CODIGO;

select avg(articulos.PRECIO), fabricantes.CODIGO
from articulos
join fabricantes on articulos.FABRICANTE = fabricantes.CODIGO
group by fabricantes.CODIGO;

SELECT AVG(articulos.PRECIO) AS precio_promedio, fabricantes.NOMBRE as nombre_fabri
FROM articulos
JOIN fabricantes ON articulos.FABRICANTE = fabricantes.CODIGO
GROUP BY fabricantes.NOMBRE;

select avg(articulos.PRECIO) as precio_medio, fabricantes.NOMBRE as nombre_fabricante
from articulos
join fabricantes on articulos.FABRICANTE = fabricantes.CODIGO
group by fabricantes.NOMBRE
having avg(articulos.PRECIO) >= 150;

select PRECIO, NOMBRE
from articulos
where PRECIO = (select min(PRECIO) from articulos);

select articulos.PRECIO, articulos.NOMBRE, fabricantes.NOMBRE as nombre_fabricante
from articulos
join fabricantes on articulos.FABRICANTE = fabricantes.CODIGO
where articulos.PRECIO = (select max(PRECIO) from articulos as a where a.FABRICANTE = articulos.FABRICANTE)
order by fabricantes.NOMBRE; 

insert into articulos (CODIGO, NOMBRE, PRECIO, FABRICANTE) values 
(11, 'Altavoces', 70, 2);

update articulos
set NOMBRE = 'Impresora Laser'
where CODIGO = 8;

select PRECIO * 0.9 as precio_descuento, NOMBRE as nombre, PRECIO as precio_original
from articulos;

select PRECIO - 10, NOMBRE, PRECIO
from articulos
where PRECIO >= 120;