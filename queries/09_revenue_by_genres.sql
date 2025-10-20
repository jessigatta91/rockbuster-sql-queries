-- Query 09: Revenue by Genres
-- Dataset: payment, rental, inventory, film, film_category, category
-- Purpose: Calculate total revenue per genre

SELECT c.name AS genre,
       SUM(p.amount) AS total_revenue
FROM payment p
JOIN rental r ON p.rental_id = r.rental_id
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
GROUP BY c.name
ORDER BY total_revenue DESC;
