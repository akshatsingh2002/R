install.packages("ggplot2")
library("ggplot2")
install.packages("palmerpenguins")
library("palmerpenguins")
View(penguins)
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

ggplot(data = penguins) + geom_point(mapping = aes(x = bill_length_mm, y = bill_depth_mm))
? geom_bar() ##used for help
#adding another asthetics
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,color=species))
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,shape=species))
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,color=species,shape=species))
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,alpha=species))
#inside aes function color will categorize, outside the color will change all the data points to the smae color
ggplot(data = penguins) + geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g))
#combine geom
ggplot(data = penguins) + geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g)) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

ggplot(data = penguins) + geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g,linetype = species))