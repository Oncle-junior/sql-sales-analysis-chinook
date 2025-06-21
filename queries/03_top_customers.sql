SELECT 
    c.first_name || ' ' || c.last_name AS customer_name,
	c.country,
	ROUND(SUM(i.total), 2) AS total_spent
FROM invoice i
JOIN customer c ON i.customer_id = c.customer_id
GROUP BY c.customer_id, c.country, customer_name
ORDER BY total_spent DESC
LIMIT 10;