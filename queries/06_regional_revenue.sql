-- Query 06: Regional Revenue by Country
-- Dataset: payment, customer, address, city, country
-- Purpose: Calculate total revenue per country

SELECT coun.country AS country,
       SUM(pay.amount) AS total_revenue
FROM payment pay
JOIN customer cust ON pay.customer_id = cust.customer_id
JOIN address addr ON cust.address_id = addr.address_id
JOIN city cityy ON addr.city_id = cityy.city_id
JOIN country coun ON cityy.country_id = coun.country_id
GROUP BY coun.country
ORDER BY total_revenue DESC;
