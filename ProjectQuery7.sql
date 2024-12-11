-- Q7. Determine the distribution of orders by hour of the day.

SELECT HOUR(order_time) AS hour_of_day, COUNT(order_id)
FROM orders
GROUP BY hour_of_day
ORDER BY hour_of_day ASC;
