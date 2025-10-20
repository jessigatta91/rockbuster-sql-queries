-- Query 08: Top 5 Genres in Top 10 Countries
-- Dataset: payment, rental, inventory, film, film_category, category, customer, address, city, country
-- Purpose: Analyze top genres by revenue in top countries

SELECT ctry.country,
       cat.name AS genre,
       SUM(p.amount) AS total_revenue
FROM payment p
JOIN rental r ON p.rental_id = r.rental_id
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category cat ON fc.category_id = cat.category_id
JOIN customer cust ON p.customer_id = cust.customer_id
JOIN address a ON cust.address_id = a.address_id
JOIN city ci ON a.city_id = ci.city_id
JOIN country ctry ON ci.country_id = ctry.country_id
WHERE cat.name IN (
    SELECT c.name
    FROM category c
    JOIN film_category fc2 ON c.category_id = fc2.category_id
    JOIN film f2 ON fc2.film_id = f2.film_id
    JOIN inventory i2 ON f2.film_id = i2.film_id
    JOIN rental r2 ON i2.inventory_id = r2.inventory_id
    JOIN payment p2 ON r2.rental_id = p2.rental_id
    GROUP BY c.name
    ORDER BY SUM(p2.amount) DESC
    LIMIT 5
)
GROUP BY ctry.country, cat.name
ORDER BY cat.name, total_revenue DESC;
