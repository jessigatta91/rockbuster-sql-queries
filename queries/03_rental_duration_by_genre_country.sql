-- Query 03: Average Rental Duration by Genre and Country
-- Dataset: film, film_category, category, inventory, store, address, city, country
-- Purpose: Analyze rental duration trends across genres and countries

SELECT c.name AS genre,
       coun.country AS country,
       AVG(f.rental_duration) AS avg_rental_duration
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
JOIN inventory i ON f.film_id = i.film_id
JOIN store s ON i.store_id = s.store_id
JOIN address addr ON s.address_id = addr.address_id
JOIN city cityy ON addr.city_id = cityy.city_id
JOIN country coun ON cityy.country_id = coun.country_id
GROUP BY c.name, coun.country
ORDER BY c.name, coun.country;
