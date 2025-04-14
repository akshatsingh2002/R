install.packages("ggplot2")
library("ggplot2")
ggplot(data = diamonds) + geom_bar(mapping = aes(x=cut))