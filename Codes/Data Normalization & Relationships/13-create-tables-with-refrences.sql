-- CREATE TABLE addresses (
--     -- id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
--     id SERIAL PRIMARY KEY, -- PostgresSQL
--     street VARCHAR(255) NOT NULL,
--     house_number VARCHAR(50) NOT NULL,
--     city_id INT NOT NULL
-- );

-- CREATE TABLE users (
--     -- id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
--     id SERIAL PRIMARY KEY, -- PostgresSQL
--     first_name VARCHAR(255) NOT NULL,
--     last_name VARCHAR(255) NOT NULL,
--     email VARCHAR(255) NOT NULL,
--     address_id INT REFERENCES addresses(id) ON DELETE RESTRICT -- NO ACTION is same as ON DELETE RESTRICT
-- );

-- CREATE TABLE cities (
--     -- id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
--     id SERIAL PRIMARY KEY, -- PostgresSQL
--     name VARCHAR(255) NOT NULL
-- );

CREATE TABLE addresses (
    -- id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
    id SERIAL PRIMARY KEY, -- PostgresSQL
    street VARCHAR(255) NOT NULL,
    house_number VARCHAR(50) NOT NULL,
    city_id INT NOT NULL
);

CREATE TABLE users (
    -- id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
    id SERIAL PRIMARY KEY, -- PostgresSQL
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    address_id INT REFERENCES addresses(id) ON DELETE CASCADE -- User will be deleted if address is deleted
);

CREATE TABLE cities (
    -- id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
    id SERIAL PRIMARY KEY, -- PostgresSQL
    name VARCHAR(255) NOT NULL
);