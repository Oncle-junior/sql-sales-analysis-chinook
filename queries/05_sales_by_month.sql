SELECT
    TO_CHAR(i.invoice_date, 'YYYY-MM') AS year_month,
	ROUND(SUM(i.total), 2) AS total_sales
FROM invoice i
GROUP BY year_month
ORDER BY year_month;