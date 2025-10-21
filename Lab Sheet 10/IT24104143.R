# IT2120 - Lab Sheet 10


# Set working directory
setwd("C:\\Users\\dulsh\\Desktop\\IT24104143_PS-Lab-10")

# Question 1: Customer Distribution Test
cat("=== Question 1 ===\n")
observed <- c(55, 62, 43, 46, 50)
prob <- c(0.2, 0.2, 0.2, 0.2, 0.2)
chisq_result1 <- chisq.test(x = observed, p = prob)
print(chisq_result1)
cat("Conclusion: Since p-value > 0.05, we do not reject H0.\n")
cat("Customers appear to arrive with equal probability each weekday.\n\n")

# Question 2: House Tasks Association Test
cat("=== Question 2 ===\n")
file_path <- "http://www.sthda.com/sthda/RDoc/data/housetasks.txt"
housetasks <- read.delim(file_path, row.names = 1)
chisq_result2 <- chisq.test(housetasks)
print(chisq_result2)
cat("Conclusion: Since p-value < 0.05, we reject H0.\n")
cat("There is significant association between tasks and distribution.\n\n")

# Exercise: Snack Type Preference
cat("=== Exercise ===\n")
snack_observed <- c(120, 95, 85, 100)
snack_prob <- c(0.25, 0.25, 0.25, 0.25)
snack_chisq <- chisq.test(x = snack_observed, p = snack_prob)
print(snack_chisq)
cat("Conclusion: Since p-value > 0.05, we do not reject H0.\n")
cat("No evidence against equal preference for snack types.\n")

