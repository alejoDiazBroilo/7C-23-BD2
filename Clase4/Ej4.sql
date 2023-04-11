use sakila;

#1 Show title and special_features of films that are PG-13; 

SELECT title as titulo_pelicula, special_features as tags 
FROM film as F 
WHERE rating = 'PG-13';

#2 Get a list of all the different films duration.;

SELECT distinct length as duracion 
FROM film as F 
order by length asc;

#3 Show title, rental_rate and replacement_cost of films that have replacement_cost from 20.00 up to 24.00;

SELECT title as titulo_pelicula, rental_rate as costo_renta, replacement_cost as multa 
FROM film as F 
WHERE costo_remplazo BETWEEN 20.00 AND 24.00;

#4 Show title, category and rating of films that have 'Behind the Scenes' as special_features;

SELECT title as titulo_pelicula, C.name as category, rating
FROM film as F
INNER JOIN film_category as FC ON F.film_id = FC.film_id 
INNER JOIN category as C ON FC.category_id = C.category_id 
WHERE special_features LIKE '%Behind the Scenes%';

# 5 Show first name and last name of actors that acted in 'ZOOLANDER FICTION';

SELECT A.first_name as nombre_actor, A.last_name as apellido_actor 
FROM actor as A 
INNER JOIN film_actor as FA ON A.actor_id = FA.actor_id 
INNER JOIN film as F ON F.film_id = FA.film_id 
WHERE F.title = 'ZOOLANDER FICTION';

#6 Show the address, city and country of the store with id 1

SELECT address, city, country 
FROM store as S 
INNER JOIN address as AD ON S.address_id = AD.address_id 
INNER JOIN city as C ON AD.city_id = C.city_id 
INNER JOIN country as CON ON C.country_id = CON.country_id 
WHERE S.store_id = 1;

#7 Show pair of film titles and rating of films that have the same rating.;

#8 Get all the films that are available in store id 2 and the manager first/last name of this store (the manager will appear in all the rows).
