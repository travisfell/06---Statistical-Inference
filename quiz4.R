# quiz 4

# question 1
subject <- 1:5
baseline <- c("140", "138", "150", "148", "135")
week2 <- c("132", "135", "151", "146", "130")
bp <- data.frame(subject, baseline, week2, stringsAsFactors = FALSE)
bp$baseline <- as.numeric(bp$baseline)
bp$week2 <- as.numeric(bp$week2)
t.test(bp$week2, bp$baseline, paired = TRUE, var.equal = FALSE, alternative = "two.sided")$p.value

# question 2
t.test(mu = 1100, conf.level = .95, alternative = "two.sided")
1100 + c(-1,1) * qt(.95, 8)*(30/sqrt(9))

# question 3
pbinom(2, 4, .5, lower.tail = FALSE)

# question 4
ppois(10, 17.87, lower.tail = TRUE)

# question 5
t.test(-3-1, var.equal = TRUE, alternative = "two.sided")$p.value

