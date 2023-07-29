--Question
--What are the pizzas with the greatest benefits?
SELECT pizza_id, price * cantidad as BENEFICIOS
FROM pizzas, (
    SELECT pizza_id AS nombre, count(pizza_id) AS cantidad
    FROM order_details Group by pizza_id) as amigo
WHERE nombre = pizza_id
Order by BENEFICIOS desc
LIMIT 10;