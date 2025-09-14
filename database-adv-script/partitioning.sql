-- Create partitioned bookings table by start_date (PostgreSQL syntax)
CREATE TABLE bookings (
    id SERIAL PRIMARY KEY,
    user_id INT,
    property_id INT,
    start_date DATE,
    end_date DATE,
    status VARCHAR(20)
) PARTITION BY RANGE (start_date);

-- Create partitions for 2025 and 2026
CREATE TABLE bookings_2025 PARTITION OF bookings
FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

CREATE TABLE bookings_2026 PARTITION OF bookings
FOR VALUES FROM ('2026-01-01') TO ('2027-01-01');

-- Sample query to test performance
EXPLAIN ANALYZE
SELECT * FROM bookings
WHERE start_date BETWEEN '2025-09-01' AND '2025-09-15';
