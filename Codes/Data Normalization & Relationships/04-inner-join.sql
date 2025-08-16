-- SELECT *
-- FROM users u
-- INNER JOIN addresses AS a ON u.address_id = a.id;

SELECT u.first_name, u.last_name, u.email, a.street, a.house_number, a.city_id, c.name AS city_name
FROM users AS u
INNER JOIN addresses AS a ON u.address_id = a.id
INNER JOIN cities AS c ON a.city_id = c.id;
-- WHERE c.name = 'New York';