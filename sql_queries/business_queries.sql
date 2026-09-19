--total revenue
SELECT SUM(amount) as total_amount FROM Payments;
--average Order Value
SELECT round(AVG(amount)) as average_value FROM Payments;
--total orders
SELECT COUNT(*) as total_orders FROM Orders;
--total customers
select COUNT(*) as total_customers FROM Customers;
--total products
select COUNT(*) as total_products FROM Products;
--revenue by payment method
SELECT payment_method, SUM(amount) as revenue FROM Payments GROUP BY payment_method;
--Payments methods generating revenue above 10000
SELECT payment_method, SUM(amount) as revenue FROM Payments GROUP BY payment_method HAVING revenue > 10000;

