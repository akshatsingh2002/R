install.packages("ggplot2")
install.packages("readr")
library("ggplot2")
library("readr")
tb_data = read.csv("tb_final5.csv")
View(tb_data)
ggplot(tb_data, aes(x = tb_deaths, y = tb_new_case)) +
  geom_point(alpha = 0.6) +
  geom_smooth(method = "lm", se = TRUE, color = "blue") +
  labs(title = "GDP per Capita vs TB New Cases",
       x = "GDP per Capita", y = "New TB Cases") +
  theme_minimal()
