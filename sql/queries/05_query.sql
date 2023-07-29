--Question
--Does the pizza shop have a month that is its month with the most sales historically? (that is, since the pizza shop data is available)
SELECT mes, SUM(cantidad) AS total_pizzas_vendidas
FROM (
    SELECT EXTRACT(MONTH FROM date) AS mes, SUM(quantity) AS cantidad
    FROM order_details
    JOIN orders ON order_details.order_id = orders.order_id
    GROUP BY EXTRACT(MONTH FROM date)
) AS resumen_meses
GROUP BY mes
ORDER BY total_pizzas_vendidas DESC
LIMIT 1;