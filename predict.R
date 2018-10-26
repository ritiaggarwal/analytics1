names(mtcars)
fit2 = lm(mpg ~ wt,data=mtcars)
range(mtcars$wt)
summary(fit2)
#predict mpg for wt = 2 and 3
(new3 = data.frame(wt=c(2,3)))
(p3 = predict(fit2, newdata = new3))
 

