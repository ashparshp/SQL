-- SELECT booking_date, SUM (num_guests) AS total_guests
-- FROM bookings; -- error: missing GROUP BY clause

SELECT booking_date, SUM (num_guests) AS total_guests
FROM bookings
GROUP BY booking_date;