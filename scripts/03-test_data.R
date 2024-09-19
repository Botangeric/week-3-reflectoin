#### Preamble ####
# Purpose: Sanity check of the data
# Author: Bo Tang
# Date: 19 September 2024
# Contact: qinghe.tang@mail.utoronto.ca
# License: 
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)


#### Test data ####
data <- read_csv("starter_folder-main-master/data/raw_data//simulated.csv")

# Test for negative numbers
data$number_of_marriage |> min() <= 0

# Test for NAs
all(is.na(data$number_of_marriage))






