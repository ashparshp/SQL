-- Do not return all cities if they have no addresses
-- SELECT c.name AS city_name, a.street AS address_street
-- FROM cities AS c
-- INNER JOIN addresses AS a ON c.id = a.city_id;

-- Give all cities and their addresses, even if some cities have no addresses
-- SELECT c.name AS city_name, a.street AS address_street
-- FROM cities AS c
-- LEFT JOIN addresses AS a ON c.id = a.city_id;

-- Retrieve all cities and their addresses, including users associated with those addresses but do not return cities that have no addresses and users
SELECT c.name AS city_name, a.street AS address_street
FROM cities AS c
LEFT JOIN addresses AS a ON c.id = a.city_id
INNER JOIN users AS u ON u.address_id = a.id;