-- Query 01: Total Customers in Top 10 Countries
-- Dataset: customer, address, city, country, payment
-- Purpose: Identify top 10 countries by total customers and average revenue per customer

SELECT coun.country,
       COUNT(DISTINCT custom.customer_id) AS total_customers,
       ROUND(AVG(pay.amount),2) AS avg_revenue_per_customer
FROM customer AS custom
INNER JOIN address AS addr ON custom.address_id = addr.address_id
INNER JOIN city AS cityy ON addr.city_id = cityy.city_id
INNER JOIN country AS coun ON cityy.country_id = coun.country_id
INNER JOIN payment AS pay ON custom.customer_id = pay.customer_id
GROUP BY coun.country
ORDER BY total_customers DESC
LIMIT 10;
