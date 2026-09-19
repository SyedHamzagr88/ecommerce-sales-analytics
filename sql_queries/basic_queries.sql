--view all customers
select * FROM Customers;
--view all products
SELECT * FROM Products;
--customers from delhi 
SELECT *  FROM Customers WHERE city = 'Delhi';
--products above 5000
SELECT * FROM Products WHERE price >5000;
-- products sorted by price
SELECT * FROM Products ORDER BY price DESC;
--top5 expensive products
select * FROM Products ORDER BY price DESC LIMIT 5;
--unique cities
SELECT DISTINCT city FROM Customers;