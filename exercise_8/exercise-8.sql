-- find all film titles rented out by customers who live in the country of Peru
-- Similar to exercise 7 with an additional join to get country name
SELECT film.title
FROM film
LEFT JOIN inventory on inventory.film_id = film.film_id
LEFT JOIN rental on rental.inventory_id = inventory.inventory_id
LEFT JOIN customer on rental.customer_id = customer.customer_id
LEFT JOIN address on customer.address_id = address.address_id
LEFT JOIN city on address.city_id = city.city_id
LEFT JOIN country on city.country_id = country.country_id
WHERE country.country = 'Peru';