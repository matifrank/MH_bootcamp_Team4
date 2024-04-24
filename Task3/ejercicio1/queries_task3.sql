/*----
SQL Joins
Escriba una consulta SQL para encontrar al vendedor y 
al cliente que residen en la misma ciudad. Return Salesman, cust_name y city.
----*/

SELECT s.name AS Salesman, c.cust_name, c.city
FROM salesman s
JOIN customer c ON s.city = c.city;

/*----
SQL Joins
Describa una consulta SQL para encontrar aquellos pedidos cuyo monto 
del pedido esté entre 500 y 2000. Devolver ord_no, purch_amt, cust_name, city.
----*/

SELECT o.ord_no, o.purch_amt, c.cust_name, c.city
FROM orders o
JOIN customer c ON o.customer_id = c.customer_id
WHERE o.purch_amt BETWEEN 500 AND 2000;

