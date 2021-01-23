Select avg (amount)
from payment

select round(avg(amount),2) 
from payment;

select min(amount)
from payment;

select amount 
from payment
order by amount;

select count (amount) from payment
where amount = 0.00;

select * from payment
LIMIT 10;

SELECT customer_id
From payment
GROUP BY customer_id;

select staff_id, count (amount), sum(amount)
from payment
group by staff_id

select customer_id, sum(amount)
from payment
group by customer_id
order by sum(amount)desc
limit 5

select customer_id, sum(amount)
from payment
group by customer_id

select customer_id, sum(amount)
from payment
group by customer_id
having sum(amount)>200

select store_id, count (customer_id)
from customer
group by store_id

select store_id, count (customer_id)
from customer
group by store_id
having count (customer_id)>300

select rating rental_rate
from film
where rating in('R','G','PG')
Group by rating
having avg(rental_rate)<3

select customer_id, count (amount)
from payment
group by customer_id
having count (amount)>35

select * from customer; 
select * from payment;

select * from customer
inner join payment
on customer.customer_id=payment.customer_id

select * from film limit 5;
select * from inventory limit 5;

select * from film
inner join inventory
on film.film_id=inventory.film_id

select film.film_id, film.title,inventory_id
from film
left outer join inventory on inventory.film_id=film.film_id

select film.film_id, film.title, inventory_id
from film
left outer join inventory on inventory.film_id=film.film_id
where inventory.film_id is NULL
order by film.film_id

select film.film_id, film.title,inventory_id
from film
right outer join inventory on inventory.film_id=film.film_id




