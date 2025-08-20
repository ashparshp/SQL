-- SELECT booking_date, SUM (num_guests) AS total_guests
-- FROM bookings; -- error: missing GROUP BY clause

-- SELECT booking_date, SUM (num_guests) AS total_guests
-- FROM bookings
-- GROUP BY booking_date;

-- SELECT p.name, SUM (b.num_guests)
-- FROM payment_methods AS p
-- LEFT JOIN bookings AS b ON p.id = b.payment_id
-- GROUP BY p.name;

SELECT p.name, b.booking_date, SUM (b.num_guests)
FROM payment_methods AS p
LEFT JOIN bookings AS b ON p.id = b.payment_id
GROUP BY p.name, b.booking_date;