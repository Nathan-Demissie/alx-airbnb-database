-- Optimized query: Retrieve bookings with user, property, and payment details for completed payments only
SELECT 
    bookings.id AS booking_id,
    bookings.start_date,
    bookings.end_date,
    users.name AS user_name,
    properties.name AS property_name,
    payments.amount,
    payments.status
FROM bookings
JOIN users ON bookings.user_id = users.id
JOIN properties ON bookings.property_id = properties.id
JOIN payments ON bookings.id = payments.booking_id
WHERE payments.status = 'completed' AND bookings.start_date >= '2025-01-01';

-- Initial query: Retrieve all bookings with user, property, and payment details
SELECT 
    bookings.id AS booking_id,
    bookings.start_date,
    bookings.end_date,
    users.id AS user_id,
    users.name AS user_name,
    properties.id AS property_id,
    properties.name AS property_name,
    payments.id AS payment_id,
    payments.amount,
    payments.status
FROM bookings
JOIN users ON bookings.user_id = users.id
JOIN properties ON bookings.property_id = properties.id
JOIN payments ON bookings.id = payments.booking_id;

EXPLAIN ANALYZE
SELECT 
    bookings.id AS booking_id,
    bookings.start_date,
    bookings.end_date,
    users.id AS user_id,
    users.name AS user_name,
    properties.id AS property_id,
    properties.name AS property_name,
    payments.id AS payment_id,
    payments.amount,
    payments.status
FROM bookings
JOIN users ON bookings.user_id = users.id
JOIN properties ON bookings.property_id = properties.id
JOIN payments ON bookings.id = payments.booking_id;

CREATE INDEX idx_user_id ON bookings(user_id);
CREATE INDEX idx_property_id_bookings ON bookings(property_id);
CREATE INDEX idx_booking_id_payments ON payments(booking_id);
