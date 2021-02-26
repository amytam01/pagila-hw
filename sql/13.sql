/*
 * The music of Queen and Kris Kristofferson have seen an unlikely resurgence.
 * As an unintended consequence, films starting with the letters K and Q have also soared in popularity.
 * Use a JOIN to display the titles of movies starting with the letters K and Q whose language is English.
 * Use tables film and language, and order the results alphabetically by film title.
 */

SELECT film.film_id, film.title, language.language_id, language.name
  FROM film LEFT JOIN language ON film.language_id = language.language_id
  WHERE film.title LIKE 'K%' OR film.title LIKE 'Q%'
  GROUP BY film.film_id, language.language_id
  ORDER BY film.title;
