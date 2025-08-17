SELECT u.first_name, u.last_name, u.email, a.street, a.house_number, a.city_id, c.name AS city_name
FROM users AS u
RIGHT JOIN addresses AS a ON u.address_id = a.id
RIGHT JOIN cities AS c ON a.city_id = c.id;