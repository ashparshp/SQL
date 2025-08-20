-- SELECT MIN (daily_sum) AS min_billed
-- FROM (
--     SELECT booking_date, SUM (amount_billed) AS daily_sum
--     FROM bookings
--     GROUP BY booking_date
-- ) AS daily_table;

-- SELECT booking_date
-- FROM bookings
-- GROUP BY booking_date
-- HAVING SUM(amount_billed) = (
--     SELECT MIN (daily_sum) AS min_billed
--     FROM (
--         SELECT booking_date, SUM (amount_billed) AS daily_sum
--         FROM bookings
--         GROUP BY booking_date
--     ) AS daily_table
-- );

-- Window function
-- SELECT booking_date, amount_tipped, SUM (amount_tipped) OVER()
-- FROM bookings;

-- Window function with partitioning: calculating daily total tips
-- SELECT booking_date, amount_tipped, SUM (amount_tipped) OVER(PARTITION BY booking_date)
-- FROM bookings;

-- Window function with partitioning and ordering: calculating cumulative tips by booking date
-- SELECT booking_date, amount_tipped, SUM (amount_tipped) OVER(PARTITION BY booking_date ORDER BY amount_billed ASC)
-- FROM bookings;

SELECT booking_date, amount_tipped, RANK() OVER(PARTITION BY booking_date ORDER BY amount_tipped DESC)
FROM bookings;