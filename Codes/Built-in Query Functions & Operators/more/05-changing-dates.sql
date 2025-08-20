-- SELECT membership_start + 7, membership_start
-- FROM memberships; -- PostgreSQL adds 7 days to the date

-- SELECT DATE_ADD(membership_start, INTERVAL 7 DAY), membership_start
-- FROM memberships; -- MySQL adds 7 days to the date

SELECT (membership_start + INTERVAL '7 MONTHS')::TIMESTAMP::DATE, membership_start
FROM memberships; -- PostgreSQL adds 7 months to the date