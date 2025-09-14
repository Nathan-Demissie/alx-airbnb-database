SELECT users.*, bookings.*
FROM users
LEFT JOIN bookings ON users.id = bookings.user_id

UNION

SELECT users.*, bookings.*
FROM users
RIGHT JOIN bookings ON users.id = bookings.user_id;
