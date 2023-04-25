#ej1;
SELECT a.last_name, a.first_name, a.actor_id
FROM actor a
WHERE a.last_name IN (
    SELECT a2.last_name
    FROM actor a2
    GROUP BY a2.last_name
    HAVING COUNT(*) > 1
)
ORDER BY a.last_name, a.first_name;

#ej2;
select actor_id,last_name,first_name
from actor
where actor_id not in (
    select actor_id
    from film_actor
);
#ej3;
select customer_id,first_name,last_name
from customer
where customer_id in (
    select customer_id from (
        select count(customer_id) as cant,customer_id
        from rental
        group by customer_id 
    ) as countCustomers
    where count(*) > 1
);
#ej4;
select customer_id,first_name,last_name
from customer
    where customer_id not in (
    select customer_id from (
    select count(customer_id) as cant,customer_id
    from rental
    group by customer_id 
    order by count(customer_id))
    as countCustomers
    where cant = 1
);
#ej5;
SELECT a.first_name, a.actor_id
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
JOIN film f ON f.film_id = fa.film_id
WHERE f.title = 'BETRAYED REAR'
OR a.actor_id IN (
    SELECT a2.actor_id
    FROM actor a2
    JOIN film_actor fa2 ON a2.actor_id = fa2.actor_id
    JOIN film f2 ON f2.film_id = fa2.film_id
    WHERE f2.title = 'CATCH AMISTAD'
)
group by actor_id; 

#ej6;
SELECT a.first_name, a.actor_id
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
JOIN film f ON f.film_id = fa.film_id
WHERE f.title = 'BETRAYED REAR'
AND a.actor_id NOT IN (
    SELECT a2.actor_id
    FROM actor a2
    JOIN film_actor fa2 ON a2.actor_id = fa2.actor_id
    JOIN film f2 ON f2.film_id = fa2.film_id
    WHERE f2.title = 'CATCH AMISTAD'
);

#ej7
SELECT a.first_name, a.actor_id
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
JOIN film f ON f.film_id = fa.film_id
WHERE f.title = 'BETRAYED REAR'
AND a.actor_id IN (
    SELECT a2.actor_id
    FROM actor a2
    JOIN film_actor fa2 ON a2.actor_id = fa2.actor_id
    JOIN film f2 ON f2.film_id = fa2.film_id
    WHERE f2.title = 'CATCH AMISTAD'
);

#ej8;
SELECT a.first_name, a.actor_id
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
JOIN film f ON f.film_id = fa.film_id
WHERE a.actor_id NOT IN (
    SELECT a2.actor_id
    FROM actor a2
    JOIN film_actor fa2 ON a2.actor_id = fa2.actor_id
    JOIN film f2 ON f2.film_id = fa2.film_id
    WHERE f2.title = 'BETRAYED REAR' or f2.title = 'CATCH AMISTAD'
)
group by a.actor_id;