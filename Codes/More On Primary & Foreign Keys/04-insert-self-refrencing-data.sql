INSERT INTO employees (first_name, last_name, supervisor_id)
VALUES 
    ('Alice', 'Johnson', NULL),  -- Alice has no supervisor
    ('Bob', 'Smith', 1),          -- Bob's supervisor is Alice
    ('Charlie', 'Brown', 1),     -- Charlie's supervisor is Alice
    ('David', 'Wilson', 2),      -- David's supervisor is Bob
    ('Eve', 'Davis', 2);         -- Eve's supervisor is Bob