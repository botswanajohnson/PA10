# flight_departure_analysis.R
# Botswana Johnson
# 11/12/2026
# sort and organize flight departure data

# load the packages
library(tidyverse)
library(nycflights13)

# sort flights by departure time and delay
sorted_flights <- flights %>%
  arrange(sched_dep_time, desc(dep_delay)) %>%
  select(sched_dep_time, dep_delay, carrier, day)

# display the sorted flight data
print(sorted_flights)