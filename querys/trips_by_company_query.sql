/* Search the company_name field. Find the number of taxi trips for 
each taxi company for November 15 and 16, 2017, name the resulting 
field trips_amount, and print it as well. Sort the results by the 
trips_amount field in descending order.*/
SELECT
    cabs.company_name AS company_name,
    COUNT(DISTINCT trips.trip_id) AS trips_amount
FROM
    trips
    JOIN cabs on trips.cab_id = cabs.cab_id
WHERE
    CAST(trips.start_ts AS date) IN ('2017-11-15','2017-11-16')
GROUP BY
    cabs.company_name
ORDER BY
    trips_amount DESC;