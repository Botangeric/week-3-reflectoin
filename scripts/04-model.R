#### Preamble ####
# Purpose: Models
# Author: Bo Tang
# Date: 19 September 2024
# Contact: qinghe.tang@mail.utoronto.ca
# License: 
# Pre-requisites: None
# Any other information needed? None
#### Workspace setup ####
library(tidyverse)
library(rstanarm)

#### Read data ####
analysis_data <- read_csv("data/analysis_data/analysis_data.csv")

### Model data ####
first_model <-
  stan_glm(
    formula = flying_time ~ length + width,
    data = analysis_data,
    family = gaussian(),
    prior = normal(location = 0, scale = 2.5, autoscale = TRUE),
    prior_intercept = normal(location = 0, scale = 2.5, autoscale = TRUE),
    prior_aux = exponential(rate = 1, autoscale = TRUE),
    seed = 212
  )


#### Save model ####
saveRDS(
  first_model,
  file = "models/first_model.rds"
)


