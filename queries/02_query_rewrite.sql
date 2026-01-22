-- Query Rewritten for Optimization
-- Improvement: Removed function from WHERE clause (SARGable condition)

SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    f.title,
    r.rental_date
FROM customer c
JOIN rental r ON c.customer_id = r.customer_id
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
WHERE r.rental_date >= '2005-01-01'
  AND r.rental_date < '2006-01-01';
