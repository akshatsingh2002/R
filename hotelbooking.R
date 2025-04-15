install.packages("tidyverse")
install.packages("skimr")
install.packages("janitor")
install.packages("readr")
install.packages("ggplot2")
library(ggplot2)
library(tidyverse)
library(skimr)
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
avg_lead_time <- bookings_df %>%
  select(lead_time)
View(avg_lead_time)
mean(avg_lead_time$lead_time)
  ggplot(data = bookings_df) + geom_bar(mapping = aes(x = distribution_channel)) + facet_wrap(~deposit_type)
  onlineta_city_hotels <- filter(bookings_df, (hotel=="" & bookings_df$market_segment==""))
View(onlineta_city_hotels)
onlineta_city_hotels_v2 <- bookings_df %>%
  filter(hotel=="City Hotel") %>%
  filter(market_segment=="Online TA")
View(onlineta_city_hotels_v2)
ggplot(data = onlineta_city_hotels) +
  geom_bar(mapping = aes(x = lead_time))