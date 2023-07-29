--Query 1 (Non-optimized)
EXPLAIN ANALIZE 
    SELECT DISTINCT pizza_id, cantidad, mes
    FROM (
        SELECT pizza_id, sum(quantity) AS cantidad, EXTRACT(MONTH FROM date) AS mes,
               ROW_NUMBER() OVER (PARTITION BY EXTRACT(MONTH FROM date) ORDER BY sum(quantity) DESC) AS num
        FROM order_details
        JOIN orders ON order_details.order_id = orders.order_id
        GROUP BY pizza_id, EXTRACT(MONTH FROM date)
    ) AS subconsulta
    WHERE num <= 3
    ORDER BY mes, cantidad DESC;