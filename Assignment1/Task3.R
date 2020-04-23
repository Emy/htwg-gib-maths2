# Task 3

#Import Churn dataset
Churn <- read.delim(paste(getwd(), "/Datasets/Churn.csv", sep=""))

# A
# Sum of people 
sum(is.na(Churn)) != 0

# B
sum(Churn$Churn)
paste(sum(Churn$Churn) / nrow(Churn) * 100, "%", sep="")

# C
frequentlyCalled <- data.frame(Churn[Churn$CustServCalls >= 5,])
notFrequentlyCalled <- data.frame(Churn[Churn$CustServCalls < 5,])

paste(sum(frequentlyCalled$Churn) / nrow(frequentlyCalled) * 100, "Frequently called customers cancelation percentage")
paste(sum(notFrequentlyCalled$Churn) / nrow(notFrequentlyCalled) * 100, "Not frequently called customers cancelation percentage")

# D
median <- median(Churn[order(Churn$AccountLength),]$AccountLength)
unloyalCustomers <- data.frame(Churn[Churn$AccountLength < median,])
loyalCustomers <- data.frame(Churn[Churn$AccountLength >= median,])

paste(sum(unloyalCustomers$Churn) / nrow(unloyalCustomers) * 100, "Unloyal customers cancelation percentage")
paste(sum(loyalCustomers$Churn) / nrow(loyalCustomers) * 100, "Loyal customers cancelation percentage")
