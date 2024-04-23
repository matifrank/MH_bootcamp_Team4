 /*----
 Paso 2: Inserción de datos
Inserta al menos cinco registros de libros en la tabla Libros. Puedes inventar la información
de los libros, pero asegúrate de incluir diferentes autores, años de publicación y editoriales.
---*/

INSERT INTO libros (id_book, isbn, titulo, anio_publicacion, editorial, idioma, nro_paginas, id_autor, id_genero)
VALUES
(1, '978-84-376-0494-7', 'Cien años de soledad', '1967', 'Editorial Sudamericana', 'Español', 432, 2, 1),
(2, '978-950-07-0008-3', 'Rayuela', '1963', 'Sudamericana', 'Español', 600, 6, 1),
(3, '978-950-07-0075-5', 'El Aleph', '1949', 'Sur', 'Español', 224, 7, 1),
(4, '978-950-03-0019-5', 'El túnel', '1948', 'Losada', 'Español', 128, 9, 1),
(5, '978-987-1022-52-2', 'La invención de Morel', '1940', 'Sur', 'Español', 120, 10, 1);

 /*----
Paso 5: Desafío adicional (opcional)
● Agrega al menos dos libros más a la tabla.
---*/

-- Libros en inglés
INSERT INTO libros (id_book, isbn, titulo, anio_publicacion, editorial, idioma, nro_paginas, id_autor, id_genero)
VALUES
(6, '978-0-7432-7356-5', 'The Great Gatsby', '1925', 'Scribner', 'Inglés', 180, 11, 1),
(7, '978-0-06-112008-4', 'To Kill a Mockingbird', '1960', 'J. B. Lippincott & Co.', 'Inglés', 281, 12, 2),
(8, '978-0-316-76948-0', 'The Catcher in the Rye', '1951', 'Little, Brown and Company', 'Inglés', 224, 13, 3),
(9, '978-0-452-28423-4', '1984', '1949', 'Secker & Warburg', 'Inglés', 328, 14, 4),
(10, '978-0-06-085052-4', 'Brave New World', '1932', 'Chatto & Windus', 'Inglés', 288, 15, 4);

-- Libros después del año 2000
INSERT INTO libros (id_book, isbn, titulo, anio_publicacion, editorial, idioma, nro_paginas, id_autor, id_genero)
VALUES
(11, '978-0-439-02348-1', 'The Hunger Games', '2008', 'Scholastic Corporation', 'Inglés', 374, 16, 7),
(12, '978-0-7475-5100-8', 'Harry Potter and the Order of the Phoenix', '2003', 'Bloomsbury Publishing', 'Inglés', 870, 3, 7),
(13, '978-0-385-50420-5', 'The Da Vinci Code', '2003', 'Doubleday', 'Inglés', 454, 17, 8),
(14, '978-0-857-53238-0', 'The Girl with the Dragon Tattoo', '2005', 'Norstedts förlag', 'Inglés', 672, 18, 9),
(15, '978-0-316-03842-5', 'Twilight', '2005', 'Little, Brown and Company', 'Inglés', 498, 19, 10);

-- Libros de ciencia ficción en español
INSERT INTO libros (id_book, isbn, titulo, anio_publicacion, editorial, idioma, nro_paginas, id_autor, id_genero)
VALUES
(16, '978-84-406-4921-4', 'El fin de la eternidad', '1955', 'Ediciones B', 'Español', 300, 25, 5),
(17, '978-84-7222-686-9', 'La guerra de los mundos', '1898', 'Ediciones Salamandra', 'Español', 240, 26, 5),
(18, '978-84-450-7718-6', 'Neuromante', '1984', 'Minotauro', 'Español', 320, 27, 5),
(19, '978-84-663-1275-5', 'Fundación', '1951', 'Ediciones Debolsillo', 'Español', 280, 28, 5),
(20, '978-84-666-1489-1', 'La nube sobre el santuario', '1886', 'Editorial Losada', 'Español', 200, 29, 5);

-- Libros académicos de filosofía después del año 2000
INSERT INTO libros (id_book, isbn, titulo, anio_publicacion, editorial, idioma, nro_paginas, id_autor, id_genero)
VALUES
(21, '978-84-670-0880-4', 'Crítica de la razón pura', '2002', 'Editorial Espasa Calpe', 'Español', 768, 30, 11),
(22, '978-84-306-0726-8', 'Justicia', '2009', 'Taurus', 'Español', 432, 31, 11); 


/*--
Paso 4: Eliminación de datos
● Elimina un libro de la tabla Libros basado en un criterio que determines (por ejemplo,
el libro más antiguo o un libro específico por título).
---*/

DELETE FROM Libros
ORDER BY anio_publicacion ASC
LIMIT 1;

DELETE FROM libros
WHERE id_book = 10;

DELETE FROM Libros
WHERE id_book = (SELECT id_book From Libros 
WHERE titulo = 'Rayuela');