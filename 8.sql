/* Question 8: Management wants to know the top 10 drivers that are qualified to receive bonuses 
using the criteria below; at least 30 rides completed, 
an average rating ≥ 4.5, and 
a cancellation rate under 5%.*/
SELECT 
    d."Driver_ID",
    d."Driver_Name" AS "Driver_Name",
    COUNT(r."Ride_ID") AS "Total_Rides",
    ROUND(AVG(d."Rating"), 2) AS "AVG_Rating",
    ROUND(
        (SUM(CASE WHEN r."Status" = 'Cancelled' THEN 1 ELSE 0 END)::NUMERIC / COUNT(r."Ride_ID")) * 100, 
        2
    ) AS "Cancellation_Rate",
    SUM(R."Fare") AS "Total_Revenue"
FROM rides_raw r
JOIN drivers_raw d ON R."Driver_ID" = d."Driver_ID"
WHERE r."Pickup_Time" BETWEEN '2021-01-01' AND '2024-12-31'
GROUP BY d."Driver_ID", D."Driver_Name"
HAVING 
    COUNT(r."Ride_ID") >= 30
    AND AVG(d."Rating") >= 4.5
    AND (SUM(CASE WHEN r."Status" = 'Cancelled' THEN 1 ELSE 0 END)::NUMERIC / COUNT(R."Ride_ID")) * 100 < 5
ORDER BY "Total_Revenue" DESC
LIMIT 10;
