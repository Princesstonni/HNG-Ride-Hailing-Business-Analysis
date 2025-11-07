/* Question 3: Compare quarterly revenue between 2021, 2022, 2023, and 2024.
Which quarter had the biggest Year-over-Year (YoY) growth? */
SELECT
    EXTRACT(YEAR FROM r."Pickup_Time") AS "Year",
    EXTRACT(QUARTER FROM r."Pickup_Time") AS "Quarter",
    SUM(p."Amount") AS "Total_Revenue"
FROM rides_raw r
JOIN payment_raw p ON r."Ride_ID" = p."Ride_ID"
WHERE p."Amount" > 0
  AND r."Status" = 'Completed'
  AND r."Pickup_Time" BETWEEN '2021-06-01' AND '2024-12-31'
GROUP BY EXTRACT(YEAR FROM r."Pickup_Time"), EXTRACT(QUARTER FROM r."Pickup_Time")
ORDER BY "Year", "Quarter";

WITH quarterly_yoy AS (
    SELECT
        "Year",
        "Quarter",
        "Total_Revenue",
        COALESCE(
            ROUND(
                ("Total_Revenue" - LAG("Total_Revenue") OVER (PARTITION BY "Quarter" ORDER BY "Year"))
                / NULLIF(LAG("Total_Revenue") OVER (PARTITION BY "Quarter" ORDER BY "Year"), 0) * 100,
                2
            ), 0
        ) AS "YoY_Growth_Percent"
    FROM (
        SELECT
            EXTRACT(YEAR FROM r."Pickup_Time") AS "Year",
            EXTRACT(QUARTER FROM r."Pickup_Time") AS "Quarter",
            SUM(p."Amount") AS "Total_Revenue"
        FROM rides_raw r
        JOIN payment_raw p ON r."Ride_ID" = p."Ride_ID"
        WHERE p."Amount" > 0
          AND r."Status" = 'Completed'
          AND r."Pickup_Time" BETWEEN '2021-01-01' AND '2024-12-31'
        GROUP BY EXTRACT(YEAR FROM r."Pickup_Time"), EXTRACT(QUARTER FROM r."Pickup_Time")
    ) t
)
SELECT *
FROM quarterly_yoy
ORDER BY "YoY_Growth_Percent" DESC
LIMIT 1;




