### Index: idx_user_id on bookings(user_id)

**Reason**: Frequently used in JOIN and WHERE clauses.

**Before**: Full table scan with high cost.

**After**: Index scan with reduced execution time and lower cost.

**Impact**: Query performance improved significantly for user-specific booking lookups.
