-- Query 07: Top 5 Regions by Revenue
-- Dataset: payment, customer, address, city, country
-- Purpose: Identify the top 5 countries by revenue and total customers

SELECT co.country AS country,
       SUM(p.amount) AS total_revenue,
       COUNT(DISTINCT cu.customer_id) AS total_customers
FROM payment p
INNER JOIN customer cu ON p.customer_id = cu.customer_id
INNER JOIN address a ON cu.address_id = a.address_id
INNER JOIN city ci ON a.city_id = ci.city_id
INNER JOIN country co ON ci.country_id = co.country_id
GROUP BY co.country
ORDER BY total_revenue DESC
LIMIT 5;
