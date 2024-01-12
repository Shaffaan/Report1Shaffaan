#### Preamble ####
# Purpose: Cleans the Toronto Bike Theft Data -> Deleting Columns not required and changing header names
# Author: Shaffaan Bin Aamir
# Date: 12 January 2024
# Contact: shaffaanbin.aamir@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? [...UPDATE THIS...]

#### Workspace setup ####
library(tidyverse)
library(janitor)
#### Clean data ####
raw_data <- read_csv("inputs/data/unedited_data.csv")

cleaned_data <- clean_names(raw_data) |>
  select(x_id, occ_year, occ_month, occ_day, location_type,premises_type,
         bike_make,bike_speed,bike_cost,status, geometry) |>
  rename(
    "Theft_id" = x_id, 
    "Offense_Year" = occ_year,
    "Offense_Month" = occ_month,
    "Offense_Day" = occ_day,
    "Location_type" = location_type,
    "Premises_type" = premises_type,
    "Bike Make" = bike_make,
    "Bike_Speed" = bike_speed,
    "Cost of Bike" = bike_cost,
    "Status of Bike" = status,
    "Coordinates" = geometry
  )



#### Save data ####
write_csv(cleaned_data, "outputs/data/analysis_data.csv")
