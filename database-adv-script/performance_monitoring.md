## Performance Monitoring Report

### Objective
To continuously monitor and refine database performance by analyzing query execution plans and making schema adjustments.

---

### Queries Monitored

#### 1. Bookings with User and Property Details
```sql
EXPLAIN ANALYZE
SELECT bookings.id, users.name, properties.name
FROM bookings
JOIN users ON bookings.user_id = users.id
JOIN properties ON bookings.property_id = properties.id
WHERE bookings.start_date >= '2025-01-01';
