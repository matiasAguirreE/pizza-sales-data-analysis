--Query 6
CREATE MATERIALIZED VIEW consulta_6 AS
SELECT EXTRACT(DOW FROM date) AS dia_semana, AVG(total_pizzas_vendidas) AS promedio_pizzas
FROM (
    SELECT orders.date, COUNT(order_details.pizza_id) AS total_pizzas_vendidas
    FROM orders
    JOIN order_details ON orders.order_id = order_details.order_id
    GROUP BY orders.date
) AS resumen_dias
GROUP BY dia_semana
ORDER BY promedio_pizzas DESC;