/* This query retrieves, for each hour, the weather condition records
from the weather_records table. Using the CASE operator, it divides all
hours into two groups: Bad if the description field contains the words 
rain or storm, and Good for the others. Name the resulting field weather_conditions.
The final table should include two fields: datetime (ts) and weather_conditions. */
SELECT
    ts,
    CASE
        WHEN description LIKE '%rain%' OR description LIKE '%storm%' THEN 'Bad'
        ELSE 'Good'
    END AS weather_conditions
FROM
    weather_records