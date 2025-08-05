-- MySQL
CREATE TABLE users {
    id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    -- full_name VARCHAR(101) GENERATED ALWAYS AS (CONCAT(first_name, ' ', last_name)) -- acts like VIRTUAL
    full_name VARCHAR(101) GENERATED ALWAYS AS (CONCAT(first_name, ' ', last_name)) STORED
}

