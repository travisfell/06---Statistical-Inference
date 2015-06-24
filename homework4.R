# homework 4 problems

# question 1
library(datasets)
data(mtcars)
head(mtcars)
mean(mtcars$mpg)


# questions 4
fourmpg <- subset(mtcars, cyl == 4, select = c("mpg", "cyl"))
sixmpg <- subset(mtcars, cyl == 6, select = c("mpg", "cyl"))
t.test(fourmpg, sixmpg, var.equal = FALSE, paired = FALSE, alternative = "two.sided")$p.value
mean(fourmpg$mpg)
mean(sixmpg$mpg)
