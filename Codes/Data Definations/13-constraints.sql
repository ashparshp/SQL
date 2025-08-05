-- CREATE TABLE users (
--     full_name VARCHAR(100) NOT NULL
-- );

-- PostgreSQL
ALTER TABLE users
ALTER COLUMN full_name SET NOT NULL,
ALTER COLUMN current_status SET NOT NULL;

-- MySQL
-- ALTER TABLE users
-- MODIFY full_name VARCHAR(200) NOT NULL,
-- MODIFY current_status ENUM('employed', 'self-employed', 'unemployed') NOT NULL;