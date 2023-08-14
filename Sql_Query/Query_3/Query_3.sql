SELECT co.country as Country, sum(amount) AS Total_Revenue FROM payment AS p
	JOIN customer as c ON p.customer_id = c.customer_id
	JOIN address as a ON c.address_id = a.address_id
	JOIN city as ci ON a.city_id = ci.city_id
	JOIN country as co ON ci.country_id = co.country_id
	Group BY co.country
	LIMIT 20