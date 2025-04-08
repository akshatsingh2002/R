install.packages("palmerpenguins")
library("palmerpenguins")
install.packages("tidyverse")
library("tidyverse")
penguins_data <- penguins %>%
  arrange(bill_length_mm)
penguins %>%
  arrange(-bill_length_mm)
View(penguins_data)
penguins %>%
  group_by(island) %>%
  drop_na() %>%
  summarize(mean_bill_length_mm = mean(bill_length_mm),max_bill = max(bill_length_mm))
penguins %>% 
  filter(species == "Adelie")