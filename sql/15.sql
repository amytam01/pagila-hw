/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */


SELECT category.name, COUNT(film.title) AS sum
  FROM category LEFT JOIN film_category ON category.category_id = film_category.category_id LEFT JOIN film ON film_category.film_id = film.film_id LEFT JOIN language ON film.language_id = language.language_id
  WHERE language.name = 'English'
  GROUP BY category.name;
