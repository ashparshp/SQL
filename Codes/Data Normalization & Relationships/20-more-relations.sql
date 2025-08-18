CREATE TABLE company_buildings (
    id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
    -- id SERIAL PRIMARY KEY, -- PostgresSQL
    name VARCHAR(200) NOT NULL
);

CREATE TABLE teams (
    id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
    -- id SERIAL PRIMARY KEY, -- PostgresSQL
    name VARCHAR(200) NOT NULL,
    FOREIGN KEY building_id INT REFERENCES company_buildings ON DELETE SET NULL -- MySQL
    -- building_id INT REFERENCES company_buildings ON DELETE SET NULL -- PostgresSQL
);

CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
    -- id SERIAL PRIMARY KEY, -- PostgresSQL
    first_name VARCHAR(200) NOT NULL,
    last_name VARCHAR(200) NOT NULL,
    birthdate DATE NOT NULL,
    -- email VARCHAR(200) REFERENCES intranet_accounts ON DELETE
    email VARCHAR(200) UNIQUE NOT NULL,
    team_id INT DEFAULT 1, -- MySQL
    FOREIGN KEY (team_id) REFERENCES teams(id) ON DELETE SET NULL  -- MySQL
    -- team_id INT DEFAULT 1 REFERENCES teams ON DELETE SET NULL DEFAULT -- PostgresSQL
);

CREATE TABLE intranet_accounts (
    id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
    -- id SERIAL PRIMARY KEY, -- PostgresSQL
    email VARCHAR(200), -- MySQL
    FOREIGN KEY (email) REFERENCES employees(email) ON DELETE CASCADE, -- MySQL
    -- email VARCHAR(200) REFERENCES employees (email) ON DELETE CASCADE, -- PostgresSQL
    password VARCHAR(200) NOT NULL
);
