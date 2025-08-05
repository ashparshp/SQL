-- PostgreSQL + ENUM => We have to create the ENUM type first
CREATE TYPE employment_status AS ENUM ('employed', 'self-employed', 'unemployed');

CREATE TABLE users (
    full_name VARCHAR(255),
    yearly_salary INT,
    -- current_status ENUM('employed', 'self-employed', 'unemployed') -- MySQL syntax
    current_status employment_status
);