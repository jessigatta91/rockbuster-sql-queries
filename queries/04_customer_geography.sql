-- Query 04: Customer Count by Country
-- Dataset: customer, address, city, country
-- Purpose: Count total customers per country

SELECT co.country AS country,
       COUNT(cu.customer_id) AS total_customers
FROM customer cu
INNER JOIN address a ON cu.address_id = a.address_id
INNER JOIN city ci ON a.city_id = ci.city_id
INNER JOIN country co ON ci.country_id = co.country_id
GROUP BY co.country
ORDER BY total_customers DESC;
