install.packages('Tmisc')
library('Tmisc')
install.packages('tidyverse')
library('tidyverse')
data("quartet")
View(quartet)
quartet %>%
  group_by(set) %>%
  summarize(mean(x),sd(x),mean(y),sd(y),cor(x,y))