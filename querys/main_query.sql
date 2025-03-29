/*This query retrieves from the trips table all trips that started at 
the Loop (pickup_location_id: 50) on Saturday and ended at O'Hare 
(dropoff_location_id: 63). Obtain the weather conditions for each trip. 
Use the method you used in the previous task. Also retrieve the duration 
of each trip. Ignore trips for which no weather data is available.

The table columns must be in the following order:

start_ts
weather_conditions
duration_seconds

Order by trip_id.*/

SELECT 
    weather_records.ts AS start_ts,
    CASE
        WHEN description LIKE '%rain%' OR description LIKE '%storm%' THEN 'Bad'
        ELSE 'Good'
    END AS weather_conditions,
    trips.duration_seconds AS duration_seconds
FROM
    trips
    INNER JOIN weather_records ON trips.start_ts = weather_records.ts
WHERE
    trips.pickup_location_id = 50
    AND trips.dropoff_location_id = 63
    AND EXTRACT(DOW FROM trips.start_ts) = 6
ORDER BY
    trips.trip_id;