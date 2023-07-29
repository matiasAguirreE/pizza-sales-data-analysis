--Question
--What are the pizzas with the greatest benefits?
SELECT pizza_id, price * cantidad AS BENEFICIOS
FROM pizzas, (
    SELECT pizza_id AS nombre, count(pizza_id) AS cantidad
    FROM order_details Group by pizza_id) AS subconsulta
WHERE nombre = pizza_id
Order by BENEFICIOS desc
LIMIT 10;