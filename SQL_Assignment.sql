1.
a.
select film.rating,film_category.category_id,film.title from film   inner join film_category  ON (film_category.film_id=film.film_id) 
where film_category.category_id=5 and film.rating='PG-13';

b.
select film.title,film.rental_rate,film.rental_duration from film   inner join film_list  ON (film_list.FID=film.film_id) 
where film_list.category='Horror' order by (film.rental_rate*film.rental_duration) desc limit 3;

c.
select distinct customer_id from rental inner join inventory on (inventory.inventory_id = rental.inventory_id) 
where  inventory.film_id in (select FID from film_list where category='Sports') and 
rental.customer_id in (select customer_id from customer where address_id in (select address_id from address 
	where city_id in (select city_id from city where country_id=44)));

d.
select distinct customer_id from rental inner join inventory on (inventory.inventory_id = rental.inventory_id) 
where  inventory.film_id in (select FID from film_list where FIND_IN_SET('NICK WAHLBERG',actors)>0) and 
rental.customer_id in (select customer_id from customer where address_id in (select address_id from address 
	where city_id in (select city_id from city where country_id=20)));



e.
select count(FID) from film_list where FIND_IN_SET('SEAN WILLIAMS',actors)>0;


2.
a.
select count(film_id) from film where film_id in (select FID from film_list 
	where category='Documentary') and FIND_IN_SET('Deleted Scenes',special_features)>0;

b.
select  count(distinct FID) from film_list  inner join inventory on (film_list.FID=inventory.film_id) 
where film_list.category='Sci-Fi' and inventory.store_id=2;

c.
select sum(amount) from payment inner join rental on (payment.rental_id=rental.rental_id) where rental.inventory_id 
in (select inventory_id from inventory inner join film_list on (inventory.film_id in (select FID from film_list 
	where category='Animation')));

d.
select category,count(category)  from film_list where FID in (select film_id from inventory inner join 
rental on (inventory.inventory_id = rental.inventory_id) where customer_id=2) group by category 
order by count(category) desc limit 3;

e.
select count(film_id) from rental inner join inventory on (inventory.inventory_id = rental.inventory_id) 
where rental.customer_id=8 and inventory.film_id in (select film_id from film where rating='R');



