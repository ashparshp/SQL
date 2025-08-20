SELECT last_checkout - last_checkin AS duration
FROM memberships; -- MySQL returns the difference in seconds and PostgreSQL returns an interval

-- SELECT TIMESTAMPDIFF(MINUTE, last_checkin, last_checkout)
-- FROM memberships; -- MySQL returns the difference in minutes

-- postgreSQL
-- SELECT NOW() - membership_start
-- FROM memberships;

-- mySQL
-- SELECT DATEDIFF(NOW(), membership_start)
-- FROM memberships;
