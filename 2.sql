-- Question 2: How many riders who signed up in 2021 still took rides in 2024? 
SELECT COUNT(DISTINCT r."Rider_ID") AS "Riders_Active_2021_2024"
FROM riders_raw r
JOIN rides_raw rd ON r."Rider_ID" = rd."Rider_ID"
WHERE EXTRACT(YEAR FROM r."Signup_Date") = 2021
  AND EXTRACT(YEAR FROM rd."Pickup_Time") = 2024
  AND rd."Status" = 'Completed';



