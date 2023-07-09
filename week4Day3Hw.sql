Questions

-- 1. List all customers who live in Texas (use
-- JOINs)

select customer_id, first_name, last_name, address, district
from customer
inner join address
on customer.address_id = address.address_id
where district = 'Texas';
-- inner join combines two shared info in the tables ON needs to be used

-- 2. Get all payments above $6.99 with the Customer's Full
-- Name

select customer.customer_id, first_name, last_name, amount
from customer
inner join payment
on customer.customer_id = payment.customer_id
where amount >= 7.00
order by amount DESC;
-- The DESC command is used to sort the data returned in descending order.

-- 3. Show all customers names who have made payments over $175(use
-- subqueries)
select customer.first_name, customer.last_name
from customer
where customer_id in (
	select customer_id
	from payment
	where amount > 175
	order by amount DESC
)
-- A subquery is a query that appears inside another query statement.


-- 4. List all customers that live in Nepal (use the city
-- table)

select customer_id, first_name, last_name, country
from customer
inner join address
on customer.address_id = address.address_id
inner join city
on address.city_id = city.city_id
inner join country
on city.country_id = country.country_id
where country = 'Nepal';
-- Kevin Schuler 

-- 5. Which staff member had the most
-- transactions?

select staff_id, COUNT(payment_id)
from payment
group by staff_id
order by COUNT(payment_id) DESC;
select staff_id, first_name, last_name
from staff
where staff_id = 2;
-- Jon Stephens
-- The COUNT() function returns the number of rows that matches a specified criterion.

-- 6. How many movies of each rating are
-- there?

select rating, COUNT(film_id)
from film
group by rating
order by COUNT(film_id) DESC;
-- PG-13: 223, NC-17: 209, PG: 194, G: 178

-- 7.Show all customers who have made a single payment
-- above $6.99 (Use Subqueries)

select customer_id, first_name, last_name
from customer
where customer_id in(
    select customer_id
    from payment
    where amount >= 7.00
)

-- 8. How many free rentals did our stores give away?

select COUNT(payment_id)
from payment
where amount <= 0;
-- 14,569