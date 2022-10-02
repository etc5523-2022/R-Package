## code to prepare `resource_data2` dataset goes here

library(tidyverse)

resource_data2 <- read_csv("natural-resources.csv") %>%
  select(`Gas production`,`Gas consumption`,`Coal production`,`Coal consumption`,
         `Oil production`,`Oil consumption`,`Entity`,`Year`,`Gas reserves`,
         `Oil reserves`,`Coal reserves`,`Population`) %>%
  pivot_longer(cols = `Gas production`:`Oil consumption`,
               names_to = 'type',
               values_to = 'quantity' )


usethis::use_data(resource_data2, overwrite = TRUE)
