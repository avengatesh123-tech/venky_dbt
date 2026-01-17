-- analyses/analyse.sql

select
    booking_id,
    booking_date,
    booking_amount,
    service_fee,
from {{ ref('bronze_bookings') }}
where booking_date >= current_date - 30
order by booking_date desc
limit 100;
