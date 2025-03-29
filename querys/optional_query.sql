/* This query finds the number of trips for each taxi company whose name
contains either the words "Yellow" or "Blue" from November 1 to 7, 2017. 
Name the resulting variable trips_amount. Group the results by the company_name field. */
SELECT
    cabs.company_name AS company_name,
    COUNT(trips.trip_id) AS trips_amount
FROM
    trips
    INNER JOIN cabs on trips.cab_id = cabs.cab_id
WHERE
    CAST(trips.start_ts AS date) BETWEEN '2017-11-01' AND '2017-11-07'
    AND (cabs.company_name LIKE '%Yellow%' OR cabs.company_name LIKE '%Blue%')
GROUP BY
    cabs.company_name