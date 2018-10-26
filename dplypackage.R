# data analysis using package

df1
library(dplyr)

df1 %>% group_by(gender) %>% summarise(mean(marks), mean(marks2))
