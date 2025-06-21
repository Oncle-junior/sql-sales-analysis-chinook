SELECT
    a.title AS album_title,
    ar.name AS artist_name,
    SUM(il.unit_price * il.quantity) AS total_sales
FROM invoice_line il
JOIN track t ON il.track_id = t.track_id
JOIN album a ON t.album_id = a.album_id
JOIN artist ar ON a.artist_id = ar.artist_id
GROUP BY a.album_id, a.title, ar.name
ORDER BY total_sales DESC
LIMIT 5;