setwd("C:\\Users\\dulsh\\Desktop\\IT24104143_Lab_5")
getwd()

#import the dataset
Delivery_Times <- read.table("Exercise - Lab 05.txt",header =TRUE,sep=",")
print(Delivery_Times)

#Draw a histogram
hist(Delivery_Times$Delivery_Time,
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time(minutes)",
     ylab = "Frequency",
     breaks = seq(20,70,by = 6),
     right = FALSE)


cum_freq <- cumsum(table(cut(Delivery_Times$Delivery_Time, breaks = seq(20,70,by =5),right=FALSE)))
plot(seq(20,65,by=5),cum_freq,type = 'o',
     main = "Cumulative Frequency Polygon(ogive) for Delivery Times",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency",
     ylim = c(0,max(cum_freq)),
     pch = 16)