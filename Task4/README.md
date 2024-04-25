# Creación de la base de datos de una biblioteca

Task 3do Dia

## Instrucciones del ejercicio 1: SQL Joins

A partir de las siguientes tablas, generar:
- consulta SQL para encontrar al vendedor y al cliente que residen en la misma ciudad. Return Salesman, cust_name y city.
- consulta SQL para encontrar aquellos pedidos cuyo monto del pedido esté entre 500 y 2000. Devolver ord_no, purch_amt, cust_name, city.

Tabla de muestra: Salesman
Tabla de muestra: Customer
Tabla de muestra: Orders

## Instrucciones del ejercicio 2: Ejercicio de Modelado Dimensional: Análisis de Ventas Minoristas

Introducción:

La empresa minorista vende una variedad de productos en varias ubicaciones. La dirección desea realizar análisis de ventas para comprender mejor el desempeño de los productos en diferentes regiones y a lo largo del tiempo.

Objetivo: Diseñar un modelo dimensional que permita a la empresa minorista analizar sus ventas de productos.

Identifica las dimensiones clave:
Producto: Incluye atributos como ID de producto, nombre del producto, categoría, precio, etc.
Tiempo: Incluye atributos como fecha, mes, trimestre, año, día de la semana, festivos, etc.
Ubicación: Incluye atributos como la ubicación de la tienda, ciudad, estado, país, código postal, etc.
Cliente (opcional): Si se recopila información del cliente, puede incluir atributos como ID de cliente, nombre, segmento, etc.

Identifica la tabla de hechos: La tabla de hechos contendrá las métricas que deseas analizar, como las ventas totales, cantidad de productos vendidos, ingresos, etc.
 
Define las relaciones entre las dimensiones y la tabla de hechos:
La tabla de hechos se relacionará con cada dimensión a través de claves foráneas. Por ejemplo, la tabla de hechos de ventas tendrá claves foráneas que apunten a las dimensiones de Producto, Tiempo y Ubicación.
 
Diseña las tablas de dimensiones:
Crea tablas de dimensiones independientes para Producto, Tiempo, Ubicación y, si es necesario, Cliente. Cada tabla debe contener atributos descriptivos relevantes.
 
Agrega atributos de jerarquía:
Dentro de las tablas de dimensiones, agrega atributos jerárquicos para permitir un análisis detallado y de alto nivel. Por ejemplo, en la dimensión de Tiempo, puedes tener jerarquías como Año > Trimestre > Mes > Día.
 
Crea una tabla de hechos de ventas:
Esta tabla contendrá las métricas de ventas, como ventas totales, cantidad de productos vendidos, ingresos, etc. Además, tendrá claves foráneas que se conectan a las dimensiones correspondientes.
 
Define las medidas:
Identifica las medidas que se calcularán en la tabla de hechos, como ventas totales, cantidad de productos vendidos, ingresos promedio por transacción, etc.
 
Define las agregaciones: Decide qué agregaciones precalcularás en la tabla de hechos para mejorar el rendimiento de las consultas, como sumas, promedios, máximos y mínimos.
 
Diseña el esquema estrella o copo de nieve: Organiza las tablas de dimensiones y la tabla de hechos en un esquema estrella o copo de nieve según las necesidades de tu análisis.
 
Carga datos de muestra:
Ingresa datos de muestra en las tablas de dimensiones y la tabla de hechos para realizar pruebas y verificar que el modelo funcione correctamente.
