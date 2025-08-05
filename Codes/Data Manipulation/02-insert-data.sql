-- INSERT INTO sales (customer_name, product_name, volume, is_recurring)
-- VALUES ('ashparsh', 'book', 12.99, TRUE);

INSERT INTO sales(date_fulfilled, customer_name, product_name, volume, is_recurring, is_disputed)
VALUES
    (NULL, 'Gambhir', 'Course Bundle', 12.99, FALSE, FALSE),
    ('2025-04-10', 'Gautam', 'Cricket Ball', 100.0, FALSE, TRUE);

