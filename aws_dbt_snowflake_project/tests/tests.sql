{{ config(
    severity='warn') }}

SELECT 
    3
FROM 
    {{ source('staging','bookings') }}
WHERE 
    BOOKING_AMOUNT < 200