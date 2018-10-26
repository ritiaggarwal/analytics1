# data structure
# vectors
x=1:10 #to create seq of nos from 1 to 10
x
x1 <- 1:20
x1
(x1=1:30)
(x2=c(1,2,13,4,5))
class(x2)

(x3=letters[1:10])
class(x3)
LETTERS[1:26]
(x3b = c('a',"Dhiraj","4"))
class(x3b)

(x4=c(T,FALSE,TRUE,T,F))
class(x4)
LETTERS[seq(1,26,2)]

#access elements
(x6=seq(0,100,by=3))
1s() #variables in my environment
x6
length(x6) # to find the lengh of elements in variable
x6[20]
x6[3] #access to third element


x5[seq(1, length(x6),2)]

#[1] 4
x6[c(2,4)]
x6[-1]
x6
x6[-c(1:10, 15:20)]
x6[c(2, -4)]
x6[c(2,4, 3,54)]
x6[-c(1,5,20)]
length(x6)
x6[-(length(x6)-1)]
(x7 = c(x6,x2))


#sort, order
(x6 = sample(1:20))
sort(x6)
sort(x6[-c(1,2)])
sort(x6, decreasing=T)
rev(x6)

#sort,order
set.seed(123)
(x6 = sample(1:20))
sort(x6)
sort(x6[-c(1,2)])
sort(x6, decreasing=T)
rev(x6)

modify 2nd element
(x= -3:2)
x[2] <-10; x


#modify the elements
x=1:10
x < 5
x[x<4 & x>6]
x[x<4 & x>6] = 100;x
x
length(x[x==100])

#matrix
100:111
(m1 = matrix(100:111, nrow=4))
(m2 = matrix(100:111, ncol=3, byrow=T))
X=10:124

X=101:124
Length(x)
m3=matrix(x, ncol=6)
class(m3)
attributes(m3)
dim(m3)


#access elements of matrix
m1
m1[1,] #1st row
m1[,1] #1st column
m1 [1,2:3]
m1[c(1,3),]
m1[,-c(1,3)]


m1

paste("c","D",sep="-")
(colnames(m1) = paste('c',1:3,sep=''))


#row and col wise summary
m1
colSums(m1)
rowSums(m1)
colMeans(m1); rowMeans(m1)
attributes(m1)
dim(m1)

t(m1) # transpose
m1
sweep(m1, MARGIN = 1, STATS = C(2,3,4,5), FUN="+")  #ROWISE

m1
?addmargins
addmargins(m1,margin=1,sum)#columnwise fuction

addmargins(m1,2,mean)    #rowise mean
addmargins(m1,c(1,2),mean)  #row&col wise function


addmargins(m1,c(1,2),list(list(mean,sum,max), list(var,sd)))  #row&col


(rollno = 1:30)
(gender = sample(c('M','F'),size =30, replace = TRUE,prob=c(.7,.3)))
(marks= floor(rnorm(30,mean=40,sd=10)))
(marks2 = ceiling(rnorm(30,40,5)))
(course =sample(c('BBA','MBA','BTECH'),size=30,replace=T,prob=c(.5,.4,.1)))
rollno; sname; gender; marks; marks2; course

df1 = data.frame(rollno, sname, gender, marks, marks2, course, strings)


floor(3.4)
ceiling(3.7)
trunc(3.4)
round(3.456,2)
signif(3.567334,5)
#create DF
(sname=paste('students',1:30,sep=''))
df1= data.frame(rollno, sname, gender, marks, marks2, course, stringsAsFactors = F)
df1


(X= rnorm(100, mean=60, sd=10))
summary(x)  #summary of x
quantile(x)
quantile(x, seq(0,1,.1))  #decile
quantile(x, seq(0,1,0.1))  #percentile
fivenum(x)
boxplot(x)
abline(h=fivenum(x))
stem(x)
hist(x)


df1[gender]
df1[1:10 ,]
#as per conditions
df1[ marks > 50 & gender=='F', c(1,2)]
df1
