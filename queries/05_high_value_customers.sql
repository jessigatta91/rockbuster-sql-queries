-- Query 05: High Value Customers
-- Dataset: customer, payment, address, city, country
-- Purpose: Identify top 5 customers by total spending

WITH customer_revenue AS (
    SELECT 
        cu.customer_id,
        cu.first_name,
        cu.last_name,
        co.country,
        SUM(p.amount) AS total_spent
    FROM customer cu
    INNER JOIN payment p ON cu.customer_id = p.customer_id
    INNER JOIN address a ON cu.address_id = a.address_id
    INNER JOIN city ci ON a.city_id = ci.city_id
    INNER JOIN country co ON ci.country_id = co.country_id
    GROUP BY cu.customer_id, cu.first_name, cu.last_name, co.country
)
SELECT *
FROM customer_revenue
ORDER BY total_spent DESC
LIMIT 5;
