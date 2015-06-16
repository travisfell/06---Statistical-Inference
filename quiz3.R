# code for quiz 3, Statistical Inference

# question 1
#In a population of interest, a sample of 9 men yielded a sample average 
#volume of 1,100cc and a standard deviation of 30cc. What is a 95% Student's 
#T confidence interval for the mean brain volume in this new population?
1100 + c(-1,1) * qt(.975, 9) * 30/sqrt(9)

#question 2
#A diet pill is given to 9 subjects over six weeks. The average difference in 
#weight (follow up - baseline) is -2 pounds. What would the standard deviation 
# of the difference in weight have to be for the upper endpoint of the 95% T 
#confidence interval to touch 0?
-2 + c(-1,1) * qt(.975, 8) * 2.6/3

#question 3
#Waiting room triage systems, new vs std, 10 nights/system
#new MWT = 3 hr, .6 variance, std MWT = 5 hr, .68 variance
# what is interval of new system w/95% confidence int
new <- 3 + c(-1,1) * qt(.95, 9) * sqrt(.6)/sqrt(10)
std <- 5 + c(-1,1) * qt(.95, 9) * sqrt(.68)/sqrt(10)
-2 + c(-1,1) * qt(.95, 19) * 1.645/sqrt(20)
t.test(1:10, 1:10, mu = -2, paired = TRUE, var.equal = TRUE)

#question 4: answer is not -2.70, -1.29
sp4 <- ((9 * .6^2 + 9 * .68^2)/(20-2))
(3-5) + c(-1,1) * qt(.95, 18) * sp * (1/10 + 1/10)^.5

#question 6
sp6 <- sqrt((99 * .5^2 + 99 * 2^2)/(200-2))
6-4 + c(-1,1) * qt(.95, 198)* sp6 * (1/99 + 1/99)^.5

#question 7
# find pooled std
# see vid 08 03 around 3 min
sp <- sqrt((8 * 1.5^2 + 8 * 1.8^2)/(9+9-2))
-3 - 1 + c(-1,1) * qt(.9, 16) * sp * (1/9 + 1/9)^.5

