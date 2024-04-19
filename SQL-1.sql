select DISTINCT district from address a
where district LIKE 'K%a' and district not like '% %'


SELECT *
FROM payment
WHERE payment_date >= '2005-06-15' AND payment_date <= '2005-06-18 23:59:59'
AND amount > 10.00
ORDER BY payment_date; 


SELECT *
FROM rental
ORDER BY rental_date DESC
LIMIT 5;


SELECT 
 	REPLACE(LOWER(first_name), 'll', 'pp') AS edited_first_name,
    REPLACE(LOWER(last_name), 'll', 'pp') AS edited_last_name
FROM
    customer
WHERE
    (first_name = 'Kelly' OR first_name = 'Willie') AND active = 1;

   
SELECT LEFT(email, POSITION('@' IN email)-1) as 'left_part_of_e-mail',
		RIGHT(email, CHAR_LENGTH(email)-POSITION('@' IN email))  as 'right_part_of_e-mail'
FROM customer;


SELECT	CONCAT(UPPER(LEFT(LEFT(email, POSITION('@' IN email)-1), 1)), 
		LOWER(SUBSTRING(LEFT(email, POSITION('@' IN email)-1), 2, 
		LENGTH(LEFT(email, POSITION('@' IN email)-1))-1)))  as 'left_part_of_e-mail',
		CONCAT(UPPER(LEFT(RIGHT(email, CHAR_LENGTH(email)-POSITION('@' IN email)), 1)), 
		LOWER(SUBSTRING(RIGHT(email, CHAR_LENGTH(email)-POSITION('@' IN email)), 2, 
		LENGTH(RIGHT(email, CHAR_LENGTH(email)-POSITION('@' IN email)))-1)))  as 'right_part_of_e-mail'
FROM customer;
