#FA9
#No. 1
# An analogue signal received at a detector, measured in micro volts, is normally distributed with mean of 200 and variance of 256.

# a. What is the probability that the signal will exceed 224 𝜇V?
# b. What is the probability that it will be between 186 and 224 𝜇V?
# c. What is the micro voltage below which 25% of the signals will be?
# d. What is the probability that the signal will be less than 240 𝜇V, given that it is larger than 210 𝜇V?
# e. Estimate the interquartile range.
# f. What is the probability that the signal will be less than 220 𝜇V, given that it is larger than 210 𝜇V?
# g. If we know that a received signal is greater that 200 𝜇V, what is the probability that is in fact greater than 220 𝜇V?

#a
mean <- 200
#According to the book, using variance would have miscalculations that why i use standard deviation by obtaining the square root of variance
sd_variance <- sqrt (256)

prob_a <- 1 - pnorm(224, mean, sd_variance)
cat("The Probability will exceed 224 𝜇V for about", prob_a*100, "%.\n")

#b
prob_b <- pnorm(224, mean, sd_variance) - pnorm(186, mean, sd_variance)
cat("The Probability will be ", prob_b*100, "%.\n")

#c 
prob_c <- qnorm(0.25, mean, sd_variance)
cat("The Value will be ",prob_c, "uV.\n")

#d
prob_d <- (pnorm(240, mean, sd_variance) - pnorm(210, mean, sd_variance)) / (1 - pnorm(210, mean, sd_variance))
cat("The Probability will be", prob_d*100,"%.\n")

#e
prob_e <- qnorm(0.75, mean, sd_variance) - qnorm(0.25, mean, sd_variance)
cat("The interquartile range is", prob_e, "uV.\n")

#f
prob_f <- (pnorm(220, mean, sd_variance) - pnorm(210, mean, sd_variance)) / (1 - pnorm(210, mean, sd_variance))
cat("The Probability will be ", prob_f*100, "%.\n")

#g
prob_g <- (1 - pnorm(220, mean, sd_variance)) / (1 - pnorm(200, mean, sd_variance))
cat("The Probability will be ", prob_g*100, "%.\n")

#No. 2
#  A manufacturer of a particular type of computer system is interested in improving its customer support services. 
#  As a first step, its marketing department has been charged with the responsibility of summarizing the extent of customer problems in terms of system failures. Over a period of six months, customers were surveyed and the 
#  amount of downtime (in minutes) due to system failures they had experienced during the previous month was collected. The average downtime was found to be 25 minutes and a variance of 144. If it can be assumed that downtime is normally distributed:

# a. obtain bounds which will include 95% of the downtime of all the customers;
# b. obtain the bound above which 10% of the downtime is included.

#a
# We need to get the lower and upper bounds for 95% of the downtime which is 0.025 for lower and 0.975 for upper.
#According to the book, using variance would have miscalculations that why i use standard deviation by obtaining the square root of variance.
mean_1 <- 25
sd_mean_1 <- sqrt(144)

lower <- qnorm(0.025,  mean_1, sd_mean_1)
upper <- qnorm(0.975, mean_1, sd_mean_1)

cat("Based on the computed data, the lower bound are", round(lower, 2), " while upper bound are", round(upper, 2), ".")

#b

# Calculates the bound above which 10% of the downtime is included.
bound_10 <- qnorm(0.9, mean_1, sd_mean_1)


cat("The bound is ", round(bound_10, 2), ".")
