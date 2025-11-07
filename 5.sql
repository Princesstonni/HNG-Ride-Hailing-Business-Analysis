/* Qestion 5: Calculate the cancellation rate per city and identify which city had
the highest cancellation rate? */
SELECT 
    r."Pickup_City" AS "City",
    ROUND(
        (SUM(CASE WHEN r."Status" = 'Cancelled' THEN 1 ELSE 0 END)::NUMERIC * 100.0 / COUNT(*)), 
        2
    ) AS "Cancellation_Rate"
FROM rides_raw r
GROUP BY r."Pickup_City"
ORDER BY "Cancellation_Rate" DESC;
