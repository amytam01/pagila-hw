/*
 * Use a JOIN to list each film and the number of actors who are listed for that film.
 * Use tables film and film_actor.
 */

SELECT film.title, film.film_id, count(film_actor.actor_id) AS actor_count
  FROM film LEFT JOIN film_actor ON film.film_id = film_actor.film_id
  GROUP BY film.title, film.film_id
  HAVING count(film_actor.actor_id) > 0
  ORDER BY count(film_actor.actor_id), film.title, film.film_id;
