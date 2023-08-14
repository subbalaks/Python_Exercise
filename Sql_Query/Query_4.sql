SELECT RANK() OVER(ORDER BY sum(amount) DESC)as rank, CONCAT(a.first_name,' ',a.last_name)as actor, sum(amount)as revenue FROM payment as p
    JOIN rental as r ON  p.rental_id = r.rental_id
	JOIN inventory as i ON r.inventory_id = i.inventory_id
	JOIN film_actor as fa ON i.film_id = fa.film_id
	JOIN actor as a ON fa.actor_id = a.actor_id
	GROUP BY a.actor_id
	LIMIT 10