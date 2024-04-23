/*------- 
Paso 3: Consulta de datos
Realiza las siguientes consultas SQL y muestra los resultados:
a) Muestra todos los libros de la tabla Libros.
b) Muestra los libros publicados después de 2010.
c) Muestra los libros escritos por un autor específico que elijas.
d) Muestra los libros publicados por una editorial específica que elijas.
-------*/
  
SELECT * FROM Libros;
SELECT * FROM Libros WHERE anio_publicacion > 2010;
SELECT * FROM Libros WHERE id_autor = 9;
SELECT * 
FROM Libros 
WHERE editorial LIKE '%Sudamericana';

/*-------
Realiza una consulta que combine múltiples condiciones utilizando AND y OR. Por
ejemplo, muestra los libros escritos por un autor específico y publicados después de
cierto año.
----*/

SELECT idioma, 
COUNT(id_book) AS 'Cantidad Libros'
FROM libros
WHERE idioma IN ('Español', 'Inglés')
AND nro_paginas >= 100 
GROUP BY idioma
ORDER BY COUNT(id_book) DESC;

/*------- Práctica extra - Clase 2: ----*/

--  Eliminar el libro más antiguo de la tabla Libros

DELETE FROM Libros
ORDER BY anio_publicacion ASC
LIMIT 1;

-- Mostrar los libros escritos por un autor específico y publicados después de cierto año (por ejemplo, "AutorElegido" y después de 2015) 

SELECT *
FROM libros
WHERE id_autor = 9  AND anio_publicacion > 1940

-- Mostrar el título y el año de publicación de los libros escritos por autores cuyos nombres comiencen con la letra "A" 

SELECT titulo, anio_publicacion AS Año
FROM libros
WHERE titulo LIKE "El%"
ORDER BY año, titulo

-- Mostrar los títulos de los libros y sus autores, ordenados alfabéticamente por autor y luego por título

SELECT titulo, id_autor
FROM libros
ORDER BY id_autor, titulo;

-- Contar cuántos libros fueron publicados por cada editorial

SELECT editorial, COUNT(*) AS Cantidad_libros
FROM libros
GROUP BY editorial
ORDER BY Cantidad_libros DESC;

--  Encontrar el autor que ha escrito la mayor cantidad de libros

SELECT titulo, id_autor, COUNT(*) as Cantidad_libros
FROM libros
GROUP BY id_autor
ORDER BY Cantidad_libros DESC
LIMIT 1

-- Calcular el año promedio de publicación de los libros en la tabla

SELECT AVG(anio_publicacion) AS promedio_anio_publicacion
FROM Libros;

-- Mostrar los libros que tienen títulos que contienen la palabra "aventura" y fueron publicados después de 2010

SELECT * 
FROM Libros
WHERE titulo LIKE '%aventura%'
AND anio_publicacion > 2010;

-- Mostrar los libros agrupados por década de publicación, junto con la cantidad de libros publicados en cada década

SELECT FLOOR(anio_publicacion / 10) * 10 AS decada, 
COUNT(*) AS cantidad_libros
FROM Libros
GROUP BY decada
ORDER BY decada;

-- Encontrar el autor con el título del libro más largo

SELECT id_autor, titulo
FROM Libros
ORDER BY LENGTH(titulo) DESC
LIMIT 1;

-- Mostrar los títulos de los libros y el número de palabras en cada título, ordenados de forma descendente por el número de palabras

SELECT titulo,
LENGTH(titulo) - LENGTH(REPLACE(titulo, ' ', '')) + 1 AS Numero_palabras
FROM libros
ORDER BY numero_palabras DESC;

-- Calcular la diferencia de años entre el año de publicación del libro más reciente y el año de publicación del libro más antiguo

SELECT MAX(anio_publicacion) - MIN(anio_publicacion) AS Diferencia_años
FROM libros;



