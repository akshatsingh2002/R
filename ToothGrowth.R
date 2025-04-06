data("ToothGrowth")
View(ToothGrowth)
filetred_tg <- filter(ToothGrowth,dose==0.5)
View(filetred_tg)
#arrange the data in the asceneding order of the length
arrange(filetred_tg,len)
#nested function
arrange(filter(ToothGrowth,dose==1),len)
piped_toothgrowth <-ToothGrowth %>%
  filter(dose == 0.5) %>%
  arrange(len)
