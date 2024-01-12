#### Preamble ####
# Purpose: Downloads and saves the data on Bicycle thefts in Toronto from opendata
# Author: Shaffaan bin Aamir
# Date: 12 January 2024
# Contact: shaffaanbin.aamir@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(opendatatoronto)     # Need this to download data
library(tidyverse)

#### Download data ####
# Load Bike Theft Data in Toronto
raw_bike_theft_data <-
  list_package_resources("c7d34d9b-23d2-44fe-8b3b-cd82c8b38978") |> 
  filter(name == "bicycle-thefts - 4326.csv") |> 
  get_resource()
raw_bike_theft_data

#### Save data ####
# [...UPDATE THIS...]
# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(raw_bike_theft_data, "inputs/data/raw_data.csv")

         
