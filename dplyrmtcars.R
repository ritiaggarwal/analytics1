#analysis of dataset mtcars using dplyr
#filename : dplyr-mtcars.R

library(dplyr)
?mtcars
#structure of data set
str(mtcars)     #structure
dim(mtcars)    #dimensions
names(mtcars) ; colnames(mtcars) #column names
rownames(mtcars)  #rownames
summary(mtcars)  #summary of dataset



#summary activities of mtcars
t1= table(mtcars$am)
pie(t1)
19/32*360
pie(t1, labels=c('auto','manual'))
t2=table(mtcars$gear)
t2
pie(t2,labels = c('three','four','five'))
summerise(mtcars)
barplot(t2)
barplot(t2, col=1:3)
barplot(t2, col=1:3, horiz=T)
barplot(t2, col=c('green','blue','yellow'), xlab='gear',ylab='no of cars')
title(main='distribution of gears of cars', sub='no of gears')


#using dplyr %>% is chaining function
mtcars %>% select(mpg) %>% slice (1:5, 10)  #slice is for rows and select for columns
mtcars %>% arrange(mpg)   #ascending order of mileage
mtcars %>%arrange(am, desc(mpg)) %>% select(am, mpg) #ascending order of am, decreasing order of mpg
#arrange is for ascending order
#desc is for descending
#select is for selecting particular elements from data
mtcars %>% mutate(rn= rownames(mtcars)) %>% select(rn, mpg)  # add another column,example to add column, u want to add one column by 10 percent increase the previous one
#display rownames with mpg
mtcars %>% sample_n(3)  # to select random
mtcars %>% sample_frac(.2)  # fraction is used to select percentage
mtcars %>% select(sample(x=c(1:11), size=2))  %>% head

sample(x=1:11, size=2)


#type of tx, mean(mpg)
mtcars %>% group_by(am)  %>% summarise(MeanMPG = mean(mpg))
mtcars %>% group_by(am) %>% summarise(MeanMPG = mean(mpg), MaxHP = max(hp), MinWT = min(wt))
mtcars %>% group_by(gear, cyl) %>% summarise(MeanMPG = mean(mpg))
