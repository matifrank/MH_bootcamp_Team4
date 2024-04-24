/*----
SQL Joins
Crear tablas según ejemplos proporcionados:
Tabla de muestra: Salesman
Tabla de muestra: Customer
Tabla de muestra: Orders
----*/

CREATE SCHEMA ecommerce;
USE ecommerce;

CREATE TABLE salesman ( 
salesman_id INT AUTO_INCREMENT PRIMARY KEY, 
name VARCHAR(100) NOT NULL, 
city VARCHAR(100) NOT NULL, 
commission DECIMAL(3, 2) NOT NULL );

INSERT INTO salesman (salesman_id, name, city, commission) 
VALUES (5001, 'James Hoog', 'New York', 0.15), 
(5002, 'Nail Knite', 'Paris', 0.13), 
(5005, 'Pit Alex', 'London', 0.11), 
(5006, 'Mc Lyon', 'Paris', 0.14), 
(5007, 'Paul Adam', 'Rome', 0.13), 
(5003, 'Lauson Hen', 'San Jose', 0.12);

CREATE TABLE customer ( 
customer_id INT AUTO_INCREMENT PRIMARY KEY, 
cust_name VARCHAR(100),
city VARCHAR(100), 
grade INT, 
salesman_id INT NOT NULL);

INSERT INTO customer 
VALUES (3002, 'Nick Rimando', 'New York', 100, 5001),
    (3007, 'Brad Davis', 'New York', 200, 5001),
    (3005, 'Graham Zusi', 'California', 200, 5002),
    (3008, 'Julian Green', 'London', 300, 5002),
    (3004, 'Fabian Johnson', 'Paris', 300, 5006),
    (3009, 'Geoff Cameron', 'Berlin', 100, 5003),
    (3003, 'Jozy Altidor', 'Moscow', 200, 5007);
    
 
CREATE TABLE orders ( 
    ord_no INT AUTO_INCREMENT PRIMARY KEY, 
    purch_amt FLOAT,
    ord_date DATE NOT NULL, 
    customer_id INT NOT NULL, 
    salesman_id INT NOT NULL 
);
 
INSERT INTO orders (ord_no, purch_amt, ord_date, customer_id, salesman_id)
VALUES
    (70001, 150.50, '2012-10-05', 3005, 5002),
    (70009, 270.65, '2012-09-10', 3001, 5005),
    (70002, 65.26, '2012-10-05', 3002, 5001),
    (70004, 110.50, '2012-08-17', 3009, 5003),
    (70007, 948.50, '2012-09-10', 3005, 5002),
    (70005, 2400.60, '2012-07-27', 3007, 5001),
    (70008, 5760.00, '2012-09-10', 3002, 5001);


