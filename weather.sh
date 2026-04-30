#!/bin/bash

API="https://api.weather.gov/gridpoints/IWX/69,39/forecast"

curl -s "$API" | \
jq -r '.properties.periods[0] | "\(.startTime[0:10]) | \(.temperature)F | \(.detailedForecast)"'
