--Query 2
CREATE MATERIALIZED VIEW consulta_2 AS
SELECT pizza_id, price * cantidad AS beneficios
FROM pizzas, (
    SELECT pizza_id AS nombre, COUNT(pizza_id) AS cantidad
    FROM order_details
    GROUP BY pizza_id
) AS subconsulta
WHERE nombre = pizza_id
ORDER BY beneficios DESC
LIMIT 10;