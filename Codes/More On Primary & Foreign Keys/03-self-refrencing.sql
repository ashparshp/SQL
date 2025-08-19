-- MySQL
CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(200) NOT NULL,
    last_name VARCHAR(200) NOT NULL,
    supervisor_id INT,
    FOREIGN KEY (supervisor_id) REFERENCES employees(id) ON DELETE SET NULL
);

-- -- PostgreSQL
-- CREATE TABLE employees (
--     id SERIAL PRIMARY KEY,
--     first_name VARCHAR(200) NOT NULL,
--     last_name VARCHAR(200) NOT NULL,
--     supervisor_id INT REFERENCES employees(id) ON DELETE SET NULL
-- );