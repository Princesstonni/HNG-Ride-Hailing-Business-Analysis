/* Question 1. Find the top 10 longest rides (by distance), including driver name,
rider name, pickup/dropoff cities, and payment method.*/
SELECT 
    r."Rider_ID",
    d."Driver_Name",
    rd."Rider_Name",
    r."Pickup_City",
    r."Dropoff_City",
    r."Distance_KM",
    p."Payment_Method"
FROM rides_raw r
JOIN drivers_raw d ON r."Driver_ID" = d."Driver_ID"
JOIN riders_raw rd ON r."Rider_ID" = rd."Rider_ID"
JOIN payment_raw p ON r."Ride_ID" = p."Ride_ID"
ORDER BY r."Distance_KM" DESC
LIMIT 10;
