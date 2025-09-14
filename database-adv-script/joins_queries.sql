-- Retrieve all bookings and the respective users who made those bookings
SELECT bookings.*, users.*
FROM bookings
INNER JOIN users ON bookings.user_id = users.id;
