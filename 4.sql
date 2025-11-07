/* Question 4: For each driver, calculate their average monthly rides since signup.
Who are the top 5 driver with the highest conistency (most rides per active month)? */
WITH driver_monthly_rides AS (
    SELECT 
        r."Driver_ID",
        TO_CHAR(r."Pickup_Time", 'YYYY-MM') AS "Month_Year",
        COUNT(r."Ride_ID") AS "Total_Rides"
    FROM rides_raw r
    WHERE r."Status" = 'Completed'
    GROUP BY r."Driver_ID", "Month_Year"
)

SELECT 
    d."Driver_Name",
    dm."Driver_ID",
    ROUND(
        CAST(SUM(dm."Total_Rides") AS NUMERIC) / 
        NULLIF(COUNT(DISTINCT dm."Month_Year"), 0), 
        2
    ) AS "Avg_Monthly_Rides"
FROM driver_monthly_rides dm
JOIN drivers_raw d ON dm."Driver_ID" = d."Driver_ID"
GROUP BY dm."Driver_ID", d."Driver_Name"
ORDER BY "Avg_Monthly_Rides" DESC
LIMIT 5;




