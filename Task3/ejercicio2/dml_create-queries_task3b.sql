INSERT INTO producto (nombre, categoria, precio) VALUES
    ('Arroz', 'Alimentos', 2.50),
    ('Detergente', 'Limpieza', 3.99),
    ('Shampoo', 'Cuidado Personal', 5.25),
    ('Aceite de Oliva', 'Alimentos', 7.99),
    ('Papel Higiénico', 'Limpieza', 4.75),
    ('Jabón de Baño', 'Cuidado Personal', 2.50),
    ('Leche', 'Alimentos', 3.50),
    ('Limpiavidrios', 'Limpieza', 3.25),
    ('Acondicionador', 'Cuidado Personal', 4.75),
    ('Fideos', 'Alimentos', 1.99),
    ('Desinfectante', 'Limpieza', 5.50),
    ('Crema Corporal', 'Cuidado Personal', 6.75),
    ('Azúcar', 'Alimentos', 2.25),
    ('Detergente para Vajilla', 'Limpieza', 4.50),
    ('Cepillo de Dientes', 'Cuidado Personal', 2.99),
    ('Harina', 'Alimentos', 2.75),
    ('Desodorante Ambiental', 'Limpieza', 3.75),
    ('Champú Anticaspa', 'Cuidado Personal', 5.99),
    ('Café', 'Alimentos', 6.50),
    ('Lavandina', 'Limpieza', 2.50);

INSERT INTO ciudad (codigo_postal, ciudad, comuna) VALUES
    ('1000', 'Belgrano', 'Comuna 1'),
    ('1014', 'Recoleta', 'Comuna 2'),
    ('1043', 'Palermo', 'Comuna 3'),
    ('1082', 'San Telmo', 'Comuna 4'),
    ('1122', 'Puerto Madero', 'Comuna 5'),
    ('1164', 'Flores', 'Comuna 6'),
    ('1206', 'Caballito', 'Comuna 7'),
    ('1258', 'Boedo', 'Comuna 8'),
    ('1304', 'Almagro', 'Comuna 9'),
    ('1408', 'Villa Crespo', 'Comuna 10');

INSERT INTO ubicacion (id_ubicacion, tienda, codigo_postal) VALUES
    (1, 'Tienda 1', '1000'), 
    (2, 'Tienda 2', '1014'), 
    (3, 'Tienda 3', '1043'),  
    (4, 'Tienda 4', '1082'), 
    (5, 'Tienda 5', '1122');  

INSERT INTO cliente (nombre, apellido, email, telefono, codigo_postal) VALUES
    ('Juan', 'Perez', 'juan@example.com', '1122334455', '1000'),
    ('Maria', 'Gonzalez', 'maria@example.com', '1122334466', '1014'),
    ('Carlos', 'Lopez', 'carlos@example.com', '1122334477', '1043'),
    ('Ana', 'Martinez', 'ana@example.com', '1122334488', '1082'),
    ('Pedro', 'Rodriguez', 'pedro@example.com', '1122334499', '1122'),
    ('Laura', 'Sanchez', 'laura@example.com', '1122334500', '1000'),
    ('Diego', 'Fernandez', 'diego@example.com', '1122334511', '1014'),
    ('Sofia', 'Diaz', 'sofia@example.com', '1122334522', '1043'),
    ('Pablo', 'Torres', 'pablo@example.com', '1122334533', '1082'),
    ('Lucia', 'Ramirez', 'lucia@example.com', '1122334544', '1122');


-- Primero, generamos ventas aleatorias para cada cliente y producto en una fecha específica 
-- Crearemos un rango de fechas para las ventas
SET @start_date = '2024-01-01';
SET @end_date = '2024-04-30';

-- Insertamos ventas aleatorias para cada cliente y producto en la fecha específica
INSERT INTO ventas (id_producto, fecha, id_ubicacion, id_cliente, ventas_totales, cantidad_productos)
SELECT 
    p.id_producto,
    '2024-04-01', 
    u.id_ubicacion,
    c.id_cliente,
    ROUND(RAND() * 1000, 2),  
    FLOOR(RAND() * 10) + 1  
FROM Producto p
CROSS JOIN Cliente c
CROSS JOIN Ubicacion u
WHERE p.id_producto <= 20  
  AND c.id_cliente <= 10;  