SELECT *
FROM payment;

SELECT *
FROM customer;

SELECT staff_id,
	   COUNT (amount)
FROM payment
GROUP BY staff_id;

SELECT customer_id,
	   SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY customer_id ASC;

SELECT customer_id,
	   SUM (amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM (amount) DESC;

SELECT (first_name || ' ' || last_name) AS full_name,
	   SUM (amount)
FROM payment JOIN customer ON payment.customer_id = customer.customer_id
GROUP BY full_name
ORDER BY SUM (amount) DESC;
-----------------------------------------------------------------

/*從payment資料表,取出所有員工的訂單總數*/
SELECT *
FROM payment;

SELECT staff_id,COUNT(payment_id) as 訂單總合
FROM payment
GROUP BY staff_id;

/*取出每個員工,在每一個客戶的訂單金額總合*/
SELECT staff_id,customer_id,SUM(amount)
FROM payment
GROUP BY staff_id,customer_id
ORDER BY customer_id;

/*取出每日訂單的總合*/
/* cast operator */
SELECT payment_date::date AS 日期, SUM(amount) AS 總合
FROM payment
GROUP BY 日期
ORDER BY 日期;

---------------------------------

SELECT payment_date
FROM payment
ORDER BY payment_date;