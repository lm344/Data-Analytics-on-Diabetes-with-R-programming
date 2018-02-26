library(ggplot2)
library(visreg)
data <- read.csv("diabetes.csv",head=TRUE)
str(data)
head(data) summary(data)
pairs(data)
train <- data[1:500,]
test <- data[501:768,]
trainmodel <- lm(Outcome ~ ., data = train)
result <- predict(trainmodel,test)
summary(result)