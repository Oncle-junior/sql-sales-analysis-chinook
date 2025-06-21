SELECT
    c.first_name || ' ' || c.last_name AS customer_name,
    COUNT(i.invoice_id) AS num_orders,
	ROUND(SUM(i.total), 2) AS total_spent,
	ROUND(AVG(i.total), 2) AS avg_order_value
FROM invoice i
JOIN customer c ON i.customer_id = c.customer_id
GROUP BY c.customer_id, customer_name
ORDER BY avg_order_value DESC
LIMIT 10;