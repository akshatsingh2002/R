install.packages("ggplot2")
install.packages("tidyverse")
install.packages("readr")
install.packages("dplyr")
library("dplyr")
library("ggplot2")
library("tidyverse")
library("readr")
tb_data = read.csv("final2.csv")
View(tb_data)
tb_data <- tb_data %>%
  mutate(mortality_rate = 100 - (Tb_new_cases-Tb_deaths)/Tb_new_cases*100)
library(dplyr)

tb_data <- tb_data %>%
  mutate(health_exp = (Health_exp_gdp_percent * GDP_per_capital) / 100)
class(tb_data)
tb_data <- tb_data %>%
  select(-morality_rate)