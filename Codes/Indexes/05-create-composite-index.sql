CREATE INDEX multiple_columns_idx ON customers (street, city);

-- It worls from left to right, meaning that the index will be most efficient when filtering by the first column (street) and then by the second column (city).
-- This index will help speed up queries that filter by both street and city, as well as queries that filter by street alone.
-- However, it will not be as efficient for queries that filter by city alone, as the index is primarily built on the street column.
-- If you frequently query by city alone, you might consider creating a separate index on the city column as well.
-- Remember that while composite indexes can improve query performance, they also add overhead to data modification operations (INSERT, UPDATE, DELETE) because the index must be maintained.
-- Therefore, it's important to balance the need for query performance with the overhead of maintaining indexes.
-- Always analyze your query patterns and test the performance impact of adding indexes.
-- Additionally, consider the size of the table and the number of distinct values in the indexed columns, as these factors can influence the effectiveness of the index.