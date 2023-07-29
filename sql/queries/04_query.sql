--Question
--In which month did each type of pizza reach its peak sales?
SELECT pizza_id, max_cantidad, mes
FROM (
    SELECT pizza_id, MAX(cantidad) AS max_cantidad, mes
    FROM (
        SELECT pizza_id, sum(quantity) AS cantidad, EXTRACT(MONTH FROM date) AS mes,
               MAX(sum(quantity)) OVER (PARTITION BY pizza_id ORDER BY EXTRACT(MONTH FROM date)) AS max_cantidad_por_pizza
        FROM order_details
        JOIN orders ON order_details.order_id = orders.order_id
        GROUP BY pizza_id, EXTRACT(MONTH FROM date)
    ) AS subconsulta
    WHERE cantidad = max_cantidad_por_pizza
    GROUP BY pizza_id, mes
) AS max_pizzas
WHERE (pizza_id, max_cantidad) IN (
    SELECT pizza_id, MAX(max_cantidad) FROM (
        SELECT pizza_id, MAX(cantidad) AS max_cantidad, mes
        FROM (
            SELECT pizza_id, sum(quantity) AS cantidad, EXTRACT(MONTH FROM date) AS mes,
                   MAX(sum(quantity)) OVER (PARTITION BY pizza_id ORDER BY EXTRACT(MONTH FROM date)) AS max_cantidad_por_pizza
            FROM order_details
            JOIN orders ON order_details.order_id = orders.order_id
            GROUP BY pizza_id, EXTRACT(MONTH FROM date)
        ) AS subconsulta
        WHERE cantidad = max_cantidad_por_pizza
        GROUP BY pizza_id, mes
    ) AS max_pizzas_otro
    GROUP BY pizza_id
)
ORDER BY pizza_id DESC, max_cantidad DESC;