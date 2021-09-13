CREATE SCHEMA CodeAcademy;  




SELECT customer_name FROM codeacademy.customer; 

SELECT customer_name, email FROM codeacademy.customer;

SELECT * FROM codeacademy.customer;

SELECT customer_name FROM codeacademy.customer ORDER BY customer_name ASC; 

SELECT customer_name FROM codeacademy.customer ORDER BY customer_name DESC; 

SELECT customer_name FROM codeacademy.customer WHERE city='Birmingham'; 

SELECT customer_name FROM codeacademy.customer WHERE city IN ('Birmingham','London');

SELECT customer_name, city FROM codeacademy.customer WHERE city!= 'Birmingham';

SELECT order_id FROM codeacademy.order WHERE order_date > '2019-05-31';

 