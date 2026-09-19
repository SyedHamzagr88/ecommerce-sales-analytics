--total revenue
SELECT SUM(amount) as total_amount FROM Payments;
--average Order Value
SELECT AVG(amount) as average_value FROM Payments;
--total orders
SELECT COUNT(*) as total_orders FROM Orders;
--revenue by payment method
SELECT payment_method, SUM(amount) as revenue FROM Payments GROUP BY payment_method;
--Payments methods generating revenue above 10000
SELECT payment_method, SUM(amount) as revenue FROM Payments GROUP BY payment_method HAVING revenue > 10000;

