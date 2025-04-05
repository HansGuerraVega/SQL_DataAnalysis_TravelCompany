# Project Description
You are working as an analyst for Zuber, a ride-sharing startup launching in Chicago. Your task is to find patterns in the available data. You want to understand passenger preferences and the impact of external factors on trips.

Working with a database, you will analyze competitors' data and test a hypothesis about the impact of weather on trip frequency.

## Data Description
A database with information about taxi trips in Chicago:

neighborhoods table: data about the city's neighborhoods

name: neighborhood name
neighborhood_id: neighborhood code
cabs table: data about taxis

cab_id: vehicle code
vehicle_id: vehicle ID
company_name: the company that owns the vehicle
trips table: data about trips

trip_id: Trip code
cab_id: Code of the vehicle operating the trip
start_ts: Date and time the trip started (rounded to the nearest hour)
end_ts: Date and time the trip ended (rounded to the nearest hour)
duration_seconds: Trip duration in seconds
distance_miles: Trip distance in miles
pickup_location_id: Pickup neighborhood code
dropoff_location_id: Dropoff neighborhood code
weather_records table: Weather data

record_id: Weather record code
ts: Date and time the record was taken (rounded to the nearest hour)
temperature: Temperature when the record was taken
description: Brief description of the weather conditions, for example, "light rain" or "partly cloudy"

![Screenshot (495)](https://github.com/HansGuerraVega/SQL_DataAnalysis_TravelCompany/blob/ffe605791f4a7b7e16bb7f56e881042f459e5dcc/tables_scheme.png)

Note: There is no direct connection between the trips and weather_records tables in the database. However, you can still use a JOIN to link them using the time the trip started (trips.start_ts) and the time the weather record was taken (weather_records.ts).

## Instructions for completing the project
### Step 1. Write code to analyze data about Chicago's weather in November 2017 from the website:

https://practicum-content.s3.us-west-1.amazonaws.com/data-analyst-eng/moved_chicago_weather_2017.html

### Step 2. Exploratory Data Analysis

Find the number of taxi trips for each taxi company from November 15-16, 2017. Name the resulting field trips_amount and display it along with the company_name field. Sort the results by the trips_amount field in descending order.
Find the number of trips for each taxi company whose name contains the words "Yellow" or "Blue" from November 1-7, 2017. Name the resulting variable trips_amount. Group the results by the company_name field.
In November 2017, the most popular taxi companies were Flash Cab and Taxi Affiliation Services. Find the number of trips for these two companies and name the resulting variable trips_amount. Group the trips for all other companies into the "Other" group. Group the data by taxi company names. Name the field company. Sort the result in descending order by trips_amount.

### Step 3. Test the hypothesis that trip times from the Loop to O'Hare International Airport change on rainy Saturdays.

Retrieve the O'Hare and Loop neighborhood identifiers from the neighborhoods table.
For each hour, retrieve the weather condition records from the weather_records table. Using the CASE operator, divide all hours into two groups: "Bad" if the description field contains the words "rain" or "storm" and "Good" for the rest. Name the resulting field weather_conditions. The final table should include two fields: datetime (ts) and weather_conditions.
Retrieve from the trips table all trips that started at the Loop (neighborhood_id: 50) and ended at O'Hare (neighborhood_id: 63) on a Saturday. Obtain the weather conditions for each trip. Use the method you used in the previous task. Also retrieve the duration of each trip.
Ignore trips for which no weather data is available.

### Step 4. Exploratory Data Analysis (Python)

In addition to the data you retrieved in the previous tasks, you have been given a second file. You now have these two CSV files:

project_sql_result_01.csv. It contains the following data:

company_name: Name of the taxi company
trips_amount: The number of trips for each taxi company on November 15 and 16, 2017.
project_sql_result_04.csv. It contains the following data:

dropoff_location_name: Chicago neighborhoods where trips ended
average_trips: The average number of trips that ended in each neighborhood in November 2017.
For these two datasets, you now need to:

import the files
study the data they contain
ensure the data types are correct
identify the top 10 neighborhoods in terms of completions
make graphs: taxi companies and number of trips, top 10 neighborhoods by number of completions
draw conclusions based on each graph and explain the results

### Step 5. Hypothesis Testing (Python)

project_sql_result_07.csv: The result of the last query. It contains data on trips from the Loop to O'Hare International Airport. Remember, these are the field values ​​from the table:

start_ts: Pickup date and time
weather_conditions: Weather conditions at the time the trip started
duration_seconds: Trip duration in seconds
Test the hypothesis:
"The average trip duration from the Loop to O'Hare International Airport changes on rainy Saturdays."
