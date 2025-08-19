-- -- MySQL
-- CREATE TABLE users (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     first_name VARCHAR(50) NOT NULL,
-- );

-- CREATE TABLE users_friends (
--     user_id INT,
--     friend_id INT,
--     PRIMARY KEY (user_id, friend_id),
--     FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
--     FOREIGN KEY (friend_id) REFERENCES users(id) ON DELETE CASCADE,
--     CHECK (user_id < friend_id)
-- );

-- Postgres
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL
);

CREATE TABLE users_friends (
    user_id INT REFERENCES users(id) ON DELETE CASCADE,
    friend_id INT REFERENCES users(id) ON DELETE CASCADE,
    CHECK (user_id < friend_id),
    PRIMARY KEY (user_id, friend_id)
);