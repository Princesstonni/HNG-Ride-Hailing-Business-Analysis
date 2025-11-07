-- Question 6: Identify riders who have taken more than 10 rides but never paid with cash.
SELECT 
    r."Rider_ID",
    rd."Rider_Name" AS "Rider_Name",
    COUNT(DISTINCT r."Ride_ID") AS "Total_Rides"
FROM rides_raw r
JOIN payment_raw p 
    ON r."Ride_ID" = p."Ride_ID"
JOIN riders_raw rd 
    ON r."Rider_ID" = rd."Rider_ID"
WHERE p."Payment_Method" != 'Cash'
GROUP BY r."Rider_ID", rd."Rider_Name"
HAVING COUNT(DISTINCT r."Ride_ID") > 10;
