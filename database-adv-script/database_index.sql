-- Index for joining users and bookings
CREATE INDEX idx_user_id ON bookings(user_id);

-- Index for joining bookings and properties
CREATE INDEX idx_property_id_bookings ON bookings(property_id);

-- Index for joining properties and reviews
CREATE INDEX idx_property_id_reviews ON reviews(property_id);

-- Index for filtering bookings by start_date
CREATE INDEX idx_start_date ON bookings(start_date);

-- Index for ordering properties by ID
CREATE INDEX idx_property_id_order ON properties(id);

-- Analyze query performance for user_id filter
EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 5;

-- Analyze query performance for property_id join
EXPLAIN ANALYZE
SELECT properties.*, reviews.*
FROM properties
LEFT JOIN reviews ON properties.id = reviews.property_id
ORDER BY properties.id;

-- Analyze query performance for date range filter
EXPLAIN ANALYZE
SELECT * FROM bookings
WHERE start_date BETWEEN '2025-09-01' AND '2025-09-15';
