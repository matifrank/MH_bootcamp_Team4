 /*----
Paso 1: Creación de la tabla
Crea una tabla llamada Libros con las siguientes columnas:
● ID (Clave primaria, autoincremental)
● Titulo (cadena de texto)
● Autor (cadena de texto)
● Año de publicación (entero)
● Editorial (cadena de texto)
----*/

CREATE SCHEMA biblioteca;

USE biblioteca;


--  libros 
CREATE TABLE libros (
    id_book INT AUTO_INCREMENT PRIMARY KEY,
    isbn VARCHAR(20) NOT NULL,
    titulo VARCHAR(80) NOT NULL,
    anio_publicacion VARCHAR(40) NOT NULL,
    editorial VARCHAR(40) NOT NULL,
    idioma VARCHAR(20),
    nro_paginas INT,
    id_autor INT,
    id_genero INT 
);

-- genero 
CREATE TABLE genero (
    id_genero INT AUTO_INCREMENT PRIMARY KEY,
    genero_literario VARCHAR(50) NOT NULL,
    subgenero VARCHAR(50)
);
-- autor 
CREATE TABLE autor (
    id_autor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    nacionalidad VARCHAR(50),
    fecha_nacimiento DATE,
    id_genero INT 
);

-- usuario 
CREATE TABLE usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    direccion VARCHAR(100),
    codigo_postal VARCHAR(10),
    telefono VARCHAR(20),
    fecha_inscripcion DATE,
    numero_identificacion VARCHAR(20),
    categoria_usuario VARCHAR(50)
);
--  localidad 
CREATE TABLE localidad (
    codigo_postal VARCHAR(10) PRIMARY KEY,
    comuna VARCHAR(50),
    ciudad VARCHAR(50)
);

-- prEstamo 
CREATE TABLE prestamo (
    id_prestamo INT AUTO_INCREMENT PRIMARY KEY,
    fecha_prestamo DATE,
    id_usuario INT,
    id_book INT,
    fecha_devolucion_prevista DATE 
);

-- devolucion
CREATE TABLE devolucion (
    id_devolucion INT AUTO_INCREMENT PRIMARY KEY,
    fecha_devolucion_real DATE,
    estado_devolucion VARCHAR(50),
    condiciones_entregado VARCHAR(50),
    multa ENUM('SI','NO'),
    id_prestamo INT 
);
