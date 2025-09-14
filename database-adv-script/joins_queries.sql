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

-- Retrieve all properties and their reviews, including properties with no reviews
SELECT properties.*, reviews.*
FROM properties
LEFT JOIN reviews ON properties.id = reviews.property_id
ORDER BY properties.id;
