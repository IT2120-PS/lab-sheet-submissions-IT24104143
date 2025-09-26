setwd("C:\\Users\\it24104143\\Desktop\\IT24104143")
data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
colnames(data)[1] <- "Weight.kg"
attach(data)

#Question 1
pop_mean <- mean(Weight.kg)
pop_mean

pop_sd <- sd(Weight.kg)
pop_sd


#Question 2
# First, create empty vectors .
sample_means <- c()
sample_sds <- c()

# The loop will be used to create and assign 25 samples of size 6.
for (i in 1:25) {
  # Draw a random sample of size 6 with replacement from the 'Weight.kg' data.
  s <- sample(Weight.kg, 6, replace = TRUE)
  
  # Calculate the mean and standard deviation of the current sample.
  sample_mean_val <- mean(s)
  sample_sd_val <- sd(s)
  
  # Append the calculated values to our vectors.
  sample_means <- c(sample_means, sample_mean_val)
  sample_sds <- c(sample_sds, sample_sd_val)
}
