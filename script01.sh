#!/bin/bash

CITY="Delhi"
API_KEY="c26d93a28ddebd92f45e7590ca6ed848"
URL="https://api.openweathermap.org/data/2.5/weather?q=$CITY&units=metric&appid=$API_KEY"

# Call the API
response=$(curl -s "$URL")

# Parse and display basic info using jq (optional but useful)
echo "Weather in $CITY:"
echo "$response" | jq '.weather[0].description'
echo "Temperature: $(echo $response | jq '.main.temp')°C"
echo "Humidity: $(echo $response | jq '.main.humidity')%"
