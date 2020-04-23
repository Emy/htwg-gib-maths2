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

paste(nrow(frequentlyCalled) / sum(frequentlyCalled$Churn), "frequently called customers cancelation percentage")
paste(nrow(notFrequentlyCalled) / sum(notFrequentlyCalled$Churn), "not frequently called customers cancelation percentage")

# D
median <- median(Churn[order(Churn$AccountLength),]$AccountLength)
unloyalCustomers <- data.frame(Churn[Churn$AccountLength < median,])
loyalCustomers <- data.frame(Churn[Churn$AccountLength > median,])

paste(nrow(unloyalCustomers) / sum(unloyalCustomers$Churn), "Unloyal customers cancelation percentage")
paste(nrow(loyalCustomers) / sum(loyalCustomers$Churn), "Loyal customers cancelation percentage")
