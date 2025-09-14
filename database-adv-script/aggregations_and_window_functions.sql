-- Aggregation: Total number of bookings per user
SELECT user_id, COUNT(*) AS total_bookings
FROM bookings
GROUP BY user_id;

-- Window function: RANK properties by total bookings
SELECT property_id,
       COUNT(*) AS total_bookings,
       RANK() OVER (ORDER BY COUNT(*) DESC) AS booking_rank
FROM bookings
GROUP BY property_id;

-- Window function: ROW_NUMBER for properties by bookings
SELECT property_id,
       COUNT(*) AS total_bookings,
       ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) AS booking_row_number
FROM bookings
GROUP BY property_id;
