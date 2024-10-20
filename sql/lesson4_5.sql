SELECT *
FROM payment;

SELECT customer_id,SUM(amount)
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 150
ORDER BY SUM(amount) DESC;

---

SELECT customer_id, SUM(amount), (first_name|| ' ' ||last_name) AS full_name,
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 150
ORDER BY SUM(amount) DESC;

---

SELECT *
FROM customer;

SELECT store_id, COUNT(amount)
FROM customer
GROUP BY store_id;

SELECT *
FROM city;

SELECT country_id
FROM country
WHERE country = 'Taiwan';

SELECT city
FROM city
WHERE country_id = 92;

SELECT city
FROM city
WHERE country_id = (
	SELECT country_id
	FROM country
	WHERE country = 'Taiwan'
);

SELECT city
FROM city JOIN country ON city.country_id = country.country_id
WHERE country = 'Taiwan';



/*subquery*/
SELECT *
FROM country;

SELECT country_id
FROM country
WHERE country='Taiwan';

SELECT city
FROM city
WHERE country_id = 92;

SELECT city
FROM city
WHERE country_id = (
	SELECT country_id
	FROM country
	WHERE country='Taiwan'
);

SELECT city
FROM city JOIN country ON city.country_id = country.country_id
WHERE country = 'Taiwan';