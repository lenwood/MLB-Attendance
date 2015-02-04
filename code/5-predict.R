load("data/clean/test.rda")
test$Attendance <- NULL

load("data/models/lmFit.rda")
lmPredict <- predict(lmFit, test)
rm(lmFit)
save(lmPredict, file="data/models/predict.lm.rda")

load("data/models/dtreeFit.rda")
dtreePredict <- predict(dtreeFit, test)
rm(dtreeFit)
save(dtreePredict, file="data/models/predict.dtree.rda")

load("data/models/gbmFit.rda")
gbmPredict <- predict(gbmFit, test)
rm(gbmFit)
save(gbmPredict, file="data/models/predict.gbm.rda")

load("data/models/rfFit.rda")
rfPredict <- predict(rfFit, test)
rm(rfFit)
save(rfPredict, file="data/models/predict.rf.rda")
