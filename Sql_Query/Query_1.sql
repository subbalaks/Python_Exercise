SELECT date_trunc('day', p.payment_date) as date, co.country as Country, sum(amount) AS Total_Revenue FROM payment AS p
	JOIN customer as c ON p.customer_id = c.customer_id
	JOIN address as a ON c.address_id = a.address_id
	JOIN city as ci ON a.city_id = ci.city_id
	JOIN country as co ON ci.country_id = co.country_id
	WHERE co.country in ('India', 'United States', 'Canada')
	Group BY date,co.country
	Order By date;