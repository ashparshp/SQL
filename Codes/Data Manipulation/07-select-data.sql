-- SELECT * FROM sales;

-- SELECT customer_name, product_name, volume, date_created FROM sales;

-- SELECT customer_name, product_name, volume as total_sales, date_created FROM sales; -- Selecting specific columns with an alias for volume

-- SELECT 'Hello World!', 1500, customer_name, product_name, volume, date_created FROM sales; -- Possible to select constants along with columns from the table

-- SELECT customer_name, product_name, volume/10 as total_sales, date_created FROM sales; -- Performing arithmetic operations do not alter the original data in the table