pkgs <- c("ggplot2", "scales")
lapply(pkgs, library, character.only=TRUE)
rm(pkgs)

load("data/models/rfFit.rda")

data <- as.data.frame(cbind(rownames(rfFit$importance), round(rfFit$importance[,"IncNodePurity"], 1)))
colnames(data) <- c("Parameters", "IncNodePurity")
data$IncNodePurity <- as.numeric(as.character(data$IncNodePurity))
data$testData <- data$IncNodePurity/1000000000
rownames(data) <- NULL
order <- order(data$IncNodePurity)
lvl <- data$Parameters[order]

data$Variable <- factor(data$Parameters, levels=lvl)

gg <- ggplot(data) + geom_point(aes(x=Variable, y=testData)) + coord_flip()
gg <- gg + labs(list(x="Variable", y="Importance", title="Variable Importance in Random Forest Model"))
gg <- gg + scale_y_continuous(labels=comma)

load("data/clean/test.rda")
actual <- test$Attendance
test$Attendance <- NULL

rfPredict <- predict(rfFit, test)

resid <- actual - rfPredict

data <- data.frame(actual, resid)
gg <- ggplot(data) + geom_point(aes(x=actual, y=resid))
gg <- gg + labs(list(x="Actual Values", y="Residuals", title="Random Forest Residual Plot"))
gg <- gg + scale_x_continuous(labels=comma) + scale_y_continuous(labels=comma)
