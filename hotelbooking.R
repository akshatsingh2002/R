install.packages("tidyverse")
install.packages("skimr")
install.packages("janitor")
install.packages("readr")
library(tidyverse)
library(skimr)b
library(janitor)
library(readr)
bookings_df <- read_csv("hotel_bookings.csv")
head(bookings_df)
glimpse(bookings_df)
colnames(bookings_df)
skim_without_charts(bookings_df)
trimmed_df <- bookings_df %>% 
  select(hotel, is_canceled, lead_time) %>% 
  rename(hotel_type = hotel)
sum_df <- trimmed_df %>%
  select(is_canceled)
sum(sum_df)