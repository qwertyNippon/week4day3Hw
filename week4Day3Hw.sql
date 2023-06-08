Questions

-- 1. List all customers who live in Texas (use
-- JOINs)
select customer.first_name, customer.last_name, customer.customer_state
from customer
Full join address
on customer = address

-- 2. Get all payments above $6.99 with the Customer's Full
-- Name

-- 3. Show all customers names who have made payments over $175(use
-- subqueries)
select customer.first_name, customer.last_name
from customer
where customer_id

SELECT *
FROM customer
WHERE customer_id IN (
	SELECT customer_id
	FROM payment
	GROUP BY customer_id
	HAVING SUM(amount) > 175
	ORDER BY SUM(amount) DESC
);

-- 4. List all customers that live in Nepal (use the city
-- table)

-- 5. Which staff member had the most
-- transactions?

-- 6. How many movies of each rating are
-- there?

-- 7.Show all customers who have made a single payment
-- above $6.99 (Use Subqueries)

-- 8. How many free rentals did our stores give away?