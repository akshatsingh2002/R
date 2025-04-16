install.packages("ggplot2")
library(ggplot2)
install.packages("palmerpenguins")
library(palmerpenguins)
ggplot(data=penguins) + geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species))+labs(title="My father thinks sky has blue color",subtitle ="relationship between fillper length and body mass "
                                                                                                        ,caption ="thisis a caption",annotate())

p <- ggplot(data=penguins) + geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species))+labs(title="body mass vs flipper length",subtitle ="relationship between fillper length and body mass "
                                                                                                             ,caption ="thisis a caption")
p