-- Q.11 Calculate the percentage contribution of each pizza type to total revenue. --
SELECT pizza_types.category,
CONCAT(ROUND(SUM(order_details.quantity * pizzas.price) / 
  (SELECT SUM(order_details.quantity * pizzas.price) AS total_sales
   FROM order_details
   JOIN pizzas
   ON pizzas.pizza_id = order_details.pizza_id
  )* 100, 2),"%") AS revenue_distribution
FROM pizza_types
JOIN pizzas
ON pizzas.pizza_type_id = pizza_types.pizza_type_id
JOIN order_details
ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.category;