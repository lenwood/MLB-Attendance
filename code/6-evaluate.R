# Root Mean Square Error
RMSE <- function(predicted, actual){
  rmse <- (mean((predicted - actual)^2))^0.5
}

# R^2
Rsquare <- function(predicted, actual){
  mu <- mean(actual)
  rse <- mean((predicted - actual)^2)/mean((mu - actual)^2)
  r2 <- 1-rse
}

load("data/clean/test.rda")
actual <- test$Attendance
rm(test)

load("data/models/predict.lm.rda")
lm.RMSE <- RMSE(lmPredict, actual)
lm.R2 <- Rsquare(lmPredict, actual)
rm(lmPredict)

load("data/models/predict.dtree.rda")
dtree.RMSE <- RMSE(dtreePredict, actual)
dtree.R2 <- Rsquare(dtreePredict, actual)
rm(dtreePredict)

load("data/models/predict.gbm.rda")
gbm.RMSE <- RMSE(gbmPredict, actual)
gbm.R2 <- Rsquare(gbmPredict, actual)
rm(gbmPredict)

load("data/models/predict.rf.rda")
rf.RMSE <- RMSE(rfPredict, actual)
rf.R2 <- Rsquare(rfPredict, actual)
rm(rfPredict)
