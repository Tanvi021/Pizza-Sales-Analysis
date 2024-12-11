-- Q3. Identify the highest-priced pizza --

SELECT DISTINCT pt.*, p.price AS highest_price_pizza
FROM pizza_types AS pt
JOIN pizzas AS p
ON pt.pizza_type_id = p.pizza_type_id
ORDER BY p.price DESC
LIMIT 10;

