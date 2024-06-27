select NOMBRE
from articulos;

select articulos.NOMBRE, articulos.PRECIO
from articulos;

select PRECIO
from articulos
where PRECIO >= 60 and PRECIO <= 120;

select articulos.NOMBRE, articulos.PRECIO * 166.386 as Pesetas
from articulos
where PRECIO;

select avg(PRECIO) as precio_medio
from articulos;

