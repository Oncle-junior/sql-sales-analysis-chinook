SELECT
    g.name AS genre,
	COUNT(il.invoice_id) AS total_sold
FROM invoice_line il
JOIN track t ON il.track_id = t.track_id
JOIN genre g ON t.genre_id = g.genre_id
GROUP BY g.genre_id, g.name
ORDER BY total_sold DESC
LIMIT 10;