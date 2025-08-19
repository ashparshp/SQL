-- INSERT INTO users (first_name)
-- VALUES
--     ('Alice'),
--     ('Bob'),
--     ('Charlie');


-- INSERT INTO users_friends (user_id, friend_id)
-- VALUES
--     (1, 2),  -- Alice and Bob
--     (1, 3),  -- Alice and Charlie
--     (2, 3);  -- Bob and Charlie

-- Query to find all friends of a user
SELECT u.first_name as user_name, f.first_name as friend_name 
FROM users as u
INNER JOIN users_friends as uf ON u.id = uf.user_id
INNER JOIN users as f ON uf.friend_id = f.id;