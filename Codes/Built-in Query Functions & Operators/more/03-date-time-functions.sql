-- SELECT EXTRACT(DAY FROM last_checkin), last_checkin
-- FROM memberships;

-- SELECT EXTRACT(MONTH FROM last_checkin), last_checkin
-- FROM memberships;

-- SELECT EXTRACT(YEAR FROM last_checkin), last_checkin
-- FROM memberships;

-- SELECT EXTRACT(DOW FROM last_checkin), last_checkin
-- FROM memberships; -- PostgreSQL: Start of the week is Sunday (0)

-- SELECT WEEKDAY(last_checkin) + 1, last_checkin
-- FROM memberships; -- MySQL: Start of the week is Monday (0)

-- SELECT EXTRACT(WEEK FROM last_checkin), last_checkin
-- FROM memberships;

-- DOW postgreSQL only
-- SELECT EXTRACT(ISODOW FROM last_checkin), last_checkin
-- FROM memberships;

-- SELECT WEEKDAY(last_checkin) + 1, last_checkin
-- FROM memberships;

-- postgreSQL only
-- SELECT CONVERT(last_checkin, DATE), CONVERT(last_checkin, TIME)
-- FROM memberships;

-- SELECT last_checkin::TIMESTAMP::DATE, last_checkin::TIMESTAMP::TIME
-- FROM memberships;

-- SELECT EXTRACT(DAY FROM last_checkin), last_checkin
-- FROM memberships;

-- SELECT EXTRACT(MONTH FROM last_checkin), last_checkin
-- FROM memberships;

-- SELECT EXTRACT(YEAR FROM last_checkin), last_checkin
-- FROM memberships;