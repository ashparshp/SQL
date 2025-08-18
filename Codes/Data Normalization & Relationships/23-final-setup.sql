-- MySQL
CREATE TABLE projects (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(200) NOT NULL,
    deadline DATE
);


CREATE TABLE company_buildings (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(200) NOT NULL
);

CREATE TABLE teams (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(200) NOT NULL,
    building_id INT,
    FOREIGN KEY (building_id) REFERENCES company_buildings(id) ON DELETE SET NULL
);

CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(200) NOT NULL,
    last_name VARCHAR(200) NOT NULL,
    birthdate DATE NOT NULL,
    email VARCHAR(200) UNIQUE NOT NULL,
    team_id INT DEFAULT 1,
    FOREIGN KEY (team_id) REFERENCES teams(id) ON DELETE SET NULL
);

CREATE TABLE intranet_accounts (
    id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(200),
    FOREIGN KEY (email) REFERENCES employees(email) ON DELETE CASCADE,
    password VARCHAR(200) NOT NULL
);

CREATE TABLE projects_employees (
   id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,
    FOREIGN KEY (employee_id) REFERENCES employees ON DELETE CASCADE,
    project_id INT,
    FOREIGN KEY (project_id) REFERENCES projects ON DELETE CASCADE,
);

-- PostgresSQL
CREATE TABLE projects (
    id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    deadline DATE
);

CREATE TABLE company_buildings (
    id SERIAL PRIMARY KEY,
    name VARCHAR(200) NOT NULL
);

CREATE TABLE teams (
    id SERIAL PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    building_id INT REFERENCES company_buildings(id) ON DELETE SET NULL
);

CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(200) NOT NULL,
    last_name VARCHAR(200) NOT NULL,
    birthdate DATE NOT NULL,
    email VARCHAR(200) UNIQUE NOT NULL,
    team_id INT DEFAULT 1 REFERENCES teams(id) ON DELETE SET NULL
);

CREATE TABLE intranet_accounts (
    id SERIAL PRIMARY KEY,
    email VARCHAR(200) REFERENCES employees(email) ON DELETE CASCADE,
    password VARCHAR(200) NOT NULL
);

CREATE TABLE projects_employees (
    id SERIAL PRIMARY KEY,
    employee_id INT REFERENCES employees ON DELETE CASCADE,
    project_id INT REFERENCES projects ON DELETE CASCADE
);