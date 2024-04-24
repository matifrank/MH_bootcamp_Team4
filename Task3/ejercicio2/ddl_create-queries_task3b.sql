/*----
Task 2.b  Modelado Dimensional: Análisis de Ventas Minoristas

Objetivo: Diseñar un modelo dimensional que permita a la empresa
minorista analizar sus ventas de productos.

Identifica las dimensiones clave:
Producto: Incluye atributos como ID de producto, nombre del producto, categoría, precio, etc.
Tiempo: Incluye atributos como fecha, mes, trimestre, año, día de la semana, festivos, etc.
Ubicación: Incluye atributos como la ubicación de la tienda, ciudad, estado, país, código postal, etc.
Cliente (opcional): Si se recopila información del cliente, puede incluir atributos como ID de cliente, nombre, segmento, etc
----*/

CREATE SCHEMA marketplace;
USE marketplace;

-- Creación de Tabla de Dimensiones: Producto
CREATE TABLE producto (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    categoria VARCHAR(50),
    precio DECIMAL(10, 2)
);
-- Agregar atributos de jerarquía: Creación de Tabla de Dimensiones Tiempo
CREATE TABLE tiempo (
    fecha DATE PRIMARY KEY,
    mes INT,
    trimestre INT,
    anio INT,
    dia_semana INT,
    festivo BOOLEAN
);
-- stored procedures para popular la tabla calendario
CALL calendar('2024-01-01', '2024-12-31');

-- Creación de Tabla de Dimensiones: Ubicación
CREATE TABLE ubicacion (
    id_ubicacion INT AUTO_INCREMENT PRIMARY KEY,
    tienda VARCHAR(100),
    codigo_postal VARCHAR(10)
);

-- Creación de Tabla de Dimensiones: ciudad
CREATE TABLE ciudad (
    codigo_postal VARCHAR(10) PRIMARY KEY,
    ciudad VARCHAR(100),
    comuna VARCHAR(100)
);
 
-- Creación de Tabla de Dimensiones: Cliente
CREATE TABLE cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(50),
    email VARCHAR(50),
    telefono VARCHAR(20),
    codigo_postal VARCHAR(10)
);

-- Creación de Tabla de Hechos / fact table: Ventas
CREATE TABLE ventas (
    id_venta INT AUTO_INCREMENT PRIMARY KEY,
    id_producto INT,
    fecha DATE NOT NULL,  -- DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL  ('YYYY-MM-DD HH:MM:SS')--
    id_ubicacion INT,
    id_cliente INT, 
    ventas_totales DECIMAL(10, 2),
    cantidad_productos INT, 
	FOREIGN KEY (id_producto) REFERENCES Producto(id_producto),
    FOREIGN KEY (fecha) REFERENCES Tiempo(fecha),
    FOREIGN KEY (id_ubicacion) REFERENCES Ubicacion(id_ubicacion),
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);


