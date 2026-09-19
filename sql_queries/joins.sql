--customers order detail
SELECT c.customer_id,c.name,c.city,p.product_name,o.quantity,o.order_date FROM customers c INNER JOIN Orders o on c.customer_id=o.customer_id INNER JOIN Products p on o.product_id=p.product_id;
--revenue by customers
SELECT c.customer_id,c.name,sum(pay.amount) as revenue
FROM customers c
INNER JOIN Orders o
on c.customer_id=o.customer_id
INNER join Payments pay
on o.order_id=pay.order_id
GROUP by c.customer_id,c.name
ORDER by revenue DESC;
--revenue by city
SELECT
    c.city,
    SUM(pay.amount) AS revenue
FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id
INNER JOIN Payments pay
ON o.order_id = pay.order_id
GROUP BY c.city
ORDER BY revenue DESC;
--revenue by category
SELECT
    p.category,
    SUM(pay.amount) AS revenue
FROM Products p
INNER JOIN Orders o
ON p.product_id = o.product_id
INNER JOIN Payments pay
ON o.order_id = pay.order_id
GROUP BY p.category
ORDER BY revenue DESC;
--top selling Products
SELECT
    p.product_name,
    SUM(o.quantity) AS total_quantity
FROM Products p
INNER JOIN Orders o
ON p.product_id = o.product_id
GROUP BY p.product_name
ORDER BY total_quantity DESC;