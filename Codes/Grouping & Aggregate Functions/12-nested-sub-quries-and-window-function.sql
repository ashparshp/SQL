SELECT MIN (daily_sum) AS min_billed
FROM (
    SELECT booking_date, SUM (amount_billed) AS daily_sum
    FROM bookings
    GROUP BY booking_date
) AS daily_table;