-- SELECT * FROM sales
-- ORDER BY volume;

-- SELECT * FROM sales
-- ORDER BY volume DESC;

-- SELECT * FROM sales
-- ORDER BY volume DESC
-- LIMIT 10;

-- SELECT * FROM sales
-- ORDER BY volume DESC
-- LIMIT 10
-- OFFSET 1;

SELECT * FROM sales
WHERE is_disputed IS FALSE
ORDER BY volume DESC
LIMIT 2
OFFSET 1;