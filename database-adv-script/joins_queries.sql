-- Users with or without bookings
SELECT users.*, bookings.*
FROM users
LEFT JOIN bookings ON users.id = bookings.user_id

UNION

-- Bookings with or without users
SELECT users.*, bookings.*
FROM bookings
LEFT JOIN users ON bookings.user_id = users.id;
