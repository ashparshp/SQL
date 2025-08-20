-- SELECT AVG (amount_billed) AS average_billed, 
--        AVG (amount_tipped) AS average_tipped
-- FROM bookings;

SELECT ROUND(AVG(num_guests), 2) AS average_guests
FROM bookings;