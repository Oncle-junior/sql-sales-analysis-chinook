SELECT
	c.country,
	ROUND(SUM(i.total), 2) AS total_sales
FROM invoice i
JOIN customer c ON i.customer_id = c.customer_id
GROUP BY c.country
ORDER BY total_sales DESC;