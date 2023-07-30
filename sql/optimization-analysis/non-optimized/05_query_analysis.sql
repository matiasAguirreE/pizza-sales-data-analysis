--Query 5 (Non-optimized)
EXPLAIN ANALIZE 
    SELECT mes, SUM(cantidad) AS total_pizzas_vendidas
    FROM (
        SELECT EXTRACT(MONTH FROM date) AS mes, SUM(quantity) AS cantidad
        FROM order_details
        JOIN orders ON order_details.order_id = orders.order_id
        GROUP BY EXTRACT(MONTH FROM date)
    ) AS resumen_meses
    GROUP BY mes
    ORDER BY total_pizzas_vendidas DESC;
