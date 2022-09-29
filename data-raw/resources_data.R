## code to prepare `resources_data` dataset goes here


library(tidyverse)

resources_data <- read_csv("natural-resources.csv") %>%
  select(`Gas production`,`Gas consumption`,`Coal production`,`Coal consumption`,
         `Oil production`,`Oil consumption`,`Entity`,`Year`,`Gas reserves`,
         `Oil reserves`,`Coal reserves`,`Population`)


usethis::use_data(resources_data, overwrite = TRUE)
