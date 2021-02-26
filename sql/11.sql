/*
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title alphabetically.
 */

SELECT film.film_id, film.title, count(inventory.last_update) AS count
  FROM film LEFT JOIN inventory ON film.film_id = inventory.film_id
  WHERE film.title LIKE 'H%'
  GROUP BY film.film_id, film.title
  HAVING count(inventory.last_update) > 0
  ORDER BY film.title DESC;
