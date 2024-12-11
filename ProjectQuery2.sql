-- Q2. Calculate the total revenue generated from pizza sales -- 

SELECT ROUND(SUM(p.price * o.quantity),2) AS total_revenue
FROM pizzas AS p
JOIN order_details AS o
ON p.pizza_id = o.pizza_id;

