CREATE TABLE IF NOT EXISTS order_details(
  order_details_id INT NOT NULL,
  order_id INT NOT NULL,
  pizza_id VARCHAR(50) NOT NULL,
  quantity INT NOT NULL,
  PRIMARY KEY(order_details_id)
);

SELECT * FROM order_details
ORDER BY order_details_id
LIMIT 10;
