
#create vector of students name: divide into 2 groups
studentname= paste('student',1:10000, sep='-')
group1 = 60%
group2 = 40%  
xy= studentname
length(xy)
(index = sample(x=length(xy), size=.6 * length(xy)))  # sample is used for random selection
length(index)
train1 = xy[index]
test1 = xy[-index]
train1
test1
?sample


#create a large DF
sname = paste('s',1:1000,sep='-')
gender = sample(x=c('male','Female'), size=1000, prob=c(.6,.4),replace=T)
marks = ceiling(rnorm(1000, 60, 10))  #60= mean, SD=10
df = data.frame(sname, gender, marks)
head(df)
table(df$gender)
length(df) ; nrow(df)   #nrow = no of rows
#split Df into 2 parts 70% and 60%
#train - 70% of df; test - 30 % of df
index2 = sample(x=nrow(df), size= .7 * nrow(df))
index2
length(index2)
df[1:5] ; df[c(1,5,7),]
train2 = df[index2,]
nrow(train2)
test2 = df[-index2,]
nrow(test2)



#using caret
library(caret)
table(df$gender); prop.table(table(df$gender))
(index3=createDataPartition(y=df$gender,p=0.7, list=F))
length(index3)
(train = df[index3,])
(test3= df[-index3,])
(t3a=table(train3$gender); prop.table(t3a))
(t3b=table(train3$gender); prop.table(t3b))
#proportion of am is almost same in both the samples
nrow(train2; nrow(test2))   #training test 70% and test set 30%
w(cb = cbind(table(train2$gender), table(test2$gender)))