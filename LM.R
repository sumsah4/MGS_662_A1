data <- read.csv("Final.csv")
summary(data)

# LM fit
set.seed(123)
train <- data[1:85,]
test <- data[86:106,]
model <- lm(data$Features.1 ~ data$Features.2 + data$Features.3 + data$Features.4 + data$Features.5 + data$Features.6 + data$Features.7 + data$Features.8 + data$Features.9 + data$Features.10)
summary(model)
model1 <- lm(data$Features.2 ~ data$Features.1 + data$Features.3 + data$Features.4 + data$Features.5 + data$Features.6 + data$Features.7 + data$Features.8 + data$Features.9 + data$Features.10)
summary(model1)
model2 <- lm(data$Features.3 ~ data$Features.1 + data$Features.2 + data$Features.4 + data$Features.5 + data$Features.6 + data$Features.7 + data$Features.8 + data$Features.9 + data$Features.10)
summary(model2)
model3 <- lm(data$Features.4 ~ data$Features.1 + data$Features.2 + data$Features.3 + data$Features.5 + data$Features.6 + data$Features.7 + data$Features.8 + data$Features.9 + data$Features.10)
summary(model3)
model4 <- lm(data$Features.5 ~ data$Features.1 + data$Features.2 + data$Features.3 + data$Features.4 + data$Features.6 + data$Features.7 + data$Features.8 + data$Features.9 + data$Features.10)
summary(model4)
model5 <- lm(data$Features.6 ~ data$Features.1 + data$Features.2 + data$Features.3 + data$Features.4 + data$Features.5 + data$Features.7 + data$Features.8 + data$Features.9 + data$Features.10)
summary(model5)
model6 <- lm(data$Features.7 ~ data$Features.1 + data$Features.2 + data$Features.3 + data$Features.4 + data$Features.5 + data$Features.6 + data$Features.8 + data$Features.9 + data$Features.10)
summary(model6)
model7 <- lm(data$Features.8 ~ data$Features.1 + data$Features.2 + data$Features.3 + data$Features.4 + data$Features.5 + data$Features.6 + data$Features.7 + data$Features.9 + data$Features.10)
summary(model7)
model8 <- lm(data$Features.9 ~ data$Features.1 + data$Features.2 + data$Features.3 + data$Features.4 + data$Features.5 + data$Features.6 + data$Features.7 + data$Features.8 + data$Features.10)
summary(model8)
model9 <- lm(data$Features.10 ~ data$Features.1 + data$Features.2 + data$Features.3 + data$Features.4 + data$Features.5 + data$Features.6 + data$Features.7 + data$Features.8 + data$Features.9)
summary(model9)

# Most releavant suitable for the dataset which helps in best analysis
anova(model, model1, model2, model3, model4, model5, model6, model7,model8, model9)






