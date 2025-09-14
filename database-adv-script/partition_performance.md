## Partitioning Performance Report

### Objective
To optimize query performance on the large `bookings` table by implementing partitioning based on the `start_date` column.

### Implementation
Used PostgreSQL's `PARTITION BY RANGE` to split the `bookings` table into yearly partitions:
- `bookings_2025`
- `bookings_2026`

### Performance Test
Executed a date-range query using `EXPLAIN ANALYZE`:
```sql
SELECT * FROM bookings WHERE start_date BETWEEN '2025-09-01' AND '2025-09-15';
