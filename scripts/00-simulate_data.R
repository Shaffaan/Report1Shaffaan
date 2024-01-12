#### Preamble ####
# Purpose: Simulates bike theft incident reports in different neighborhoods of Toronto
# Author: Shaffaan Bin Aamir
# Date: 12 January 2023 
# Contact: shaffaanbin.aamir@mail.utoronto.ca
# License: MIT
# Pre-requisites: Know where to get the data
# Any other information needed? [...UPDATE THIS...]

#### Work space setup ####
# Un comment the code below if tidyverse and janitor are not already installed
# in the computer. Comment it out again once installation is done
# Only need to isntall once per computer
#install.packages("tidyverse")
#install.packages("janitor")



library(tidyverse)
library(janitor)

#### Simulate data ####
simulated_data <-
  tibble(
    # Use 1 through to 151 to represent each division
    # Randomly pick an option, with replacement, 151 times
    "Location" = sample(
      x = c("Little Italy", "Kensigton", "Downtown", "Bay Street", "Christie"),
      size = 1000,
      replace = TRUE
    ),
    "Date of Incident" = sample(
      x = c(2015, 2015, 2017, 2018, 2019, 2020),
      size = 1000,
      replace = TRUE
    ),
    "Cost of Bike (in dollars $)" = sample(
      x = seq(200, 2000, by = 1),
      size = 1000,
      replace = TRUE
    )
  )

simulated_data
simulated_data_sorted <- simulated_data %>% arrange(`Date of Incident`)
simulated_data_sorted



