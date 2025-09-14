-- Retrieve all bookings and the respective users who made those bookings
SELECT bookings.*, users.*
FROM bookings
INNER JOIN users ON bookings.user_id = users.id;

-- Simulate FULL OUTER JOIN in SQLite using UNION of two LEFT JOINs
SELECT users.*, bookings.*
FROM users
LEFT JOIN bookings ON users.id = bookings.user_id

UNION

SELECT users.*, bookings.*
FROM bookings
LEFT JOIN users ON bookings.user_id = users.id;
