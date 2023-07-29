--Query 3 (Non-optimized)
EXPLAIN ANALIZE 
    SELECT pizza_id, COUNT(*) AS cantidad_meses
    FROM (
        SELECT DISTINCT pizza_id, cantidad, mes
        FROM (
            SELECT pizza_id, sum(quantity) AS cantidad, EXTRACT(MONTH FROM date) AS mes,
                   ROW_NUMBER() OVER (PARTITION BY EXTRACT(MONTH FROM date) ORDER BY sum(quantity) ASC) AS num
            FROM order_details
            JOIN orders ON order_details.order_id = orders.order_id
            GROUP BY pizza_id, EXTRACT(MONTH FROM date)
        ) AS subconsulta
        WHERE num = 1
    ) AS pizzas_menos_vendidas
    GROUP BY pizza_id;