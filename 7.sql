/*  Question 7: Find the top 3 drivers in each city by total revenue earned between June 2021 and Dec 2024. 
If a driver has multiple cities, count revenue where they picked up passangers in the city.*/
SELECT 
    r."Pickup_City" AS "City",
    d."Driver_ID",
    d."Driver_Name" AS "Driver_Name",
    SUM(p."Amount") AS "Total_Revenue",
    RANK() OVER (PARTITION BY r."Pickup_City" ORDER BY SUM(p."Amount") DESC) AS "Driver_Rank"
FROM rides_raw r
JOIN drivers_raw d ON r."Driver_ID" = d."Driver_ID"
JOIN payment_raw p ON r."Ride_ID" = p."Ride_ID"
WHERE p."Amount" > 0
  AND r."Pickup_Time" BETWEEN '2021-06-01' AND '2024-12-31'
GROUP BY r."Pickup_City", d."Driver_ID", d."Driver_Name"
HAVING SUM(p."Amount") > 0
ORDER BY r."Pickup_City", "Driver_Rank"
LIMIT 3;
