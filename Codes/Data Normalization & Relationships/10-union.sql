-- SELECT * FROM users
-- WHERE id < 3
-- UNION
-- SELECT * FROM users
-- WHERE id = 5;

-- -- Uisng OR
-- SELECT * FROM users
-- WHERE id < 3 OR id = 5;

-- Error: UNION ALL cannot be used with different column counts
-- SELECT * FROM users
-- UNION
-- SELECT * FROM addresses;

-- Correct usage of UNION with same column count
SELECT id, first_name FROM users
UNION
SELECT id, street FROM addresses;