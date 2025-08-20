-- SELECT last_checkout - last_checkin AS duration
-- FROM memberships; -- MySQL returns the difference in days (integer), PostgreSQL returns an interval (e.g., '1 day 2 hours 3 minutes')

-- SELECT TIMESTAMPDIFF(MINUTE, last_checkin, last_checkout)
-- FROM memberships; -- MySQL returns the difference in minutes

-- postgreSQL
-- SELECT NOW() - membership_start
-- FROM memberships;

-- mySQL
-- SELECT DATEDIFF(NOW(), membership_start)
-- FROM memberships;
