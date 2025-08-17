SELECT u.first_name, u.last_name, u.email, a.street, a.house_number, a.city_id, c.name AS city_name
FROM users AS u
LEFT JOIN addresses AS a ON u.address_id = a.id
LEFT JOIN cities AS c ON a.city_id = c.id;
-- WHERE c.name = 'New York';