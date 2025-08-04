-- CREATE TABLE users (
--     full_name VARCHAR(100) NOT NULL,
--     yearly_salary INT CHECK (yearly_salary > 0)
-- );

UPDATE users
SET yearly_salary = NULL
WHERE yearly_salary = 0;
-- WHERE full_name = "Sir Jadeja"; can use this to set a specific user's salary to NULL

-- PostgreSQL and MySQL
ALTER TABLE users
ADD CONSTRAINT yearly_salary_positive CHECK (yearly_salary > 0)