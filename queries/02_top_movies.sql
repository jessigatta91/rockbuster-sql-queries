-- Query 02: Top and Bottom 5 Movies by Revenue
-- Dataset: film, inventory, rental, payment
-- Purpose: Identify highest and lowest revenue-generating movies

WITH movie_revenue AS (
    SELECT f.title,
           SUM(p.amount) AS total_revenue
    FROM payment AS p
    INNER JOIN rental AS r ON p.rental_id = r.rental_id
    INNER JOIN inventory AS i ON r.inventory_id = i.inventory_id
    INNER JOIN film AS f ON i.film_id = f.film_id
    GROUP BY f.title
),
ranked_movies AS (
    SELECT title,
           total_revenue,
           RANK() OVER (ORDER BY total_revenue DESC) AS revenue_rank_desc,
           RANK() OVER (ORDER BY total_revenue ASC) AS revenue_rank_asc
    FROM movie_revenue
)
SELECT title,
       total_revenue,
       CASE
           WHEN revenue_rank_desc <= 5 THEN 'Top 5'
           WHEN revenue_rank_asc <= 5 THEN 'Bottom 5'
           ELSE NULL
       END AS category
FROM ranked_movies
WHERE revenue_rank_desc <= 5 OR revenue_rank_asc <= 5
ORDER BY total_revenue DESC;
