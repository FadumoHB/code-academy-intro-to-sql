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

SELECT * FROM codeacademy.order WHERE total_amount >=100;

SELECT * FROM codeacademy.order WHERE order_date > '2019-03-19' AND total_amount >=100;

SELECT * FROM codeacademy.order LIMIT 5;

SELECT * FROM codeacademy.order ORDER BY total_amount DESC limit 5;

SELECT * FROM codeacademy.customer WHERE phone_number IS NOT NULL;

SELECT A.customer_name
,B.total_amount
FROM codeacademy.customer A
INNER JOIN codeacademy.order B
ON A.customer_id = B.customer_id 
LIMIT 10;


SELECT A.customer_name
,B.total_amount, order_date 
FROM codeacademy.customer A
INNER JOIN codeacademy.order B
ON A.customer_id = B.customer_id 
LIMIT 10;


SELECT A.customer_name, 
B.* FROM codeacademy.customer A 
LEFT JOIN codeacademy.order B 
ON A.customer_id = B.customer_id;



SELECT
A.city,
count (B.order_id)
FROM codeacademy.customer A 
INNER JOIN codeacademy.order B 
ON A.customer_id = B.customer_id 
GROUP BY A.city;


SELECT
A.city,
count (B.order_id)
FROM codeacademy.customer A 
INNER JOIN codeacademy.order B 
ON A.customer_id = B.customer_id 
GROUP BY A.city;




SELECT A.customer_name, MIN (B.order_date) FROM codeacademy.customer A 
INNER JOIN codeacademy.order B ON A.customer_id = B.customer_id
GROUP BY A.customer_name;

SELECT A.customer_name, MAX (B.order_date) FROM codeacademy.customer A 
INNER JOIN codeacademy.order B ON A.customer_id = B.customer_id
GROUP BY A.customer_name;

SELECT A.customer_name, SUM (B.total_amount) FROM codeacademy.customer A 
LEFT JOIN codeacademy.order B ON A.customer_id = B.customer_id
GROUP BY A.customer_name;









SELECT LEFT(order_date::text,7) YEAR_MONTH, SUM (total_amount) TOTAL 
FROM codeacademy.order 
GROUP BY YEAR_MONTH
ORDER BY TOTAL DESC ;


SELECT LEFT(A.order_date::text,7) year_month,
SUM(A.total_amount), B.product_name
FROM codeacademy.order_line C 
INNER JOIN codeacademy.product B ON C.product_id = B.product_id 
INNER JOIN codeacademy.order A ON
C.order_id = A.order_id GROUP BY year_month, B.product_name;

SELECT A.customer_name, B.order_date, B.total_amount
FROM codeacademy.customer A 
INNER JOIN codeacademy.order B
ON B.customer_id = A.customer_id 
WHERE B.order_status_id=2;





