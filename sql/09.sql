/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */

SELECT staff.first_name, staff.last_name, SUM(payment.amount) AS sum
  FROM staff LEFT JOIN payment ON staff.staff_id = payment.staff_id
  WHERE payment_date >= '2020-01-01' AND payment_date < '2020-02-01'
  GROUP BY first_name, last_name;
