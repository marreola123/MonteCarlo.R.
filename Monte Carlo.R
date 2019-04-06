#`
#` Monte Carlo Simulation. A Tool used for simulation, prediction, or forcasting.
#` It is use to estimate unkown values using inferential statistics.
#` What monte carlos does is generates random numbers given some specific parameters from the mean and standard diviation.
#`
#`
#######` Running random numbers
# n = the number of random number created (number of samples) i.e. 100, 1000, 10000. 
# change mean and sd.
# mean = 
# std = 
x <- rnorm(n = 1000, mean = 3, sd = 5)

#' II way of creating random numbers & replication 1000 times (samples).
y <- replicate(n=4, rnorm(n=100, mean = 10, sd = 2))

#` View the data
summary(y)
hist(y)
View(y)
plot(y)

#` Stats of the simulation. ean/sd will not equal original data. 
mean(y)
sd(y)

#`this measures how much spread is between our experimental trials.
apply(y, 2, mean)
apply(y, 2, sd)

#` III` Regression with specify parameters
# Y ~ N(a + bx, sd). The mean is the function of the linear regression.
par(mfrow=c(2, 2)) # Sets plot 2x2
#
# Set a, b, x with original data.
a = 3 # intercept coeficient
b = .34 # Slope coeficient 
x <- rnorm(1:20) # Generates the randum numbers
Y <- a + b * x # Runs the OLS model

#` II way of Plotting
plot(Y ~ x, main = "Name of plot")
abline(a = 3, b = .34) # Expected relation on parameters used.


