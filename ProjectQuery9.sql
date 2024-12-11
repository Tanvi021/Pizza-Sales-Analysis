-- Q9. Group the orders by date and calculate the average number of pizzas ordered per day --

SELECT ROUND(AVG(total_quantity),0) AS avg_no_of_pizzas_per_day FROM 
(SELECT orders.order_date, SUM(order_details.quantity) AS total_quantity
FROM orders
JOIN order_details
ON order_details.order_id = orders.order_id
GROUP BY orders.order_date
ORDER BY total_quantity DESC) AS order_quantity;