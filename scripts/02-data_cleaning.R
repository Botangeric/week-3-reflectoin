#### Preamble ####
# Purpose: Cleans the raw marriage data into an analysis dataset
# Author: Bo Tang
# Date: 19 September 2024
# Contact: qinghe.tang@mail.utoronto.ca
# License: 
# Pre-requisites: None
# Any other information needed? None

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data <- read_csv("starter_folder-main-master/data/raw_data/raw_data.csv")

cleaned_data <-
  raw_data |>
  janitor::clean_names() |> 
  separate(col = time_period,
            into = c("year", "month"),
            sep = "-") |> 
  mutate(date = lubridate::ymd(paste(year, month, "01", sep = "-"))
         )
  
#### Save data ####
write_csv(cleaned_data, "starter_folder-main-master/data/analysis_data/analysis_data.csv")

