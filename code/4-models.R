load("data/clean/MLBgames.rda")

# split into test, train & validate
set.seed(42)
index <- sample(1:nrow(MLBgames), nrow(MLBgames)/5, replace=FALSE)
temp <- MLBgames[index,]
train <- MLBgames[-index,]
rm(index)
index <- sample(1:nrow(temp), nrow(temp)/10, replace=FALSE)
test <- temp[-index,]
validate <- temp[index,]
rm(MLBgames, index, temp)
save(train, file="data/clean/train.rda")
save(test, file="data/clean/test.rda")
save(validate, file="data/clean/validate.rda")
rm(test, validate)

# load packages
pkgs <- c("caret", "gbm", "randomForest", "rpart")
lapply(pkgs, library, character.only=TRUE)
rm(pkgs)

# regression
lmControl <- trainControl(method="cv", number=10)
lmFit <- train(Attendance ~ ., data=train, method="lm", trControl=lmControl)
rm(lmControl)
save(lmFit, file="data/models/lmFit.rda")

# decision trees (rpart)
dtreeFit <- rpart(Attendance ~ ., data=train, method="anova", control=rpart.control(cp=0.0001, xval=10))
save(dtreeFit, file="data/models/dtreeFit.rda")

# gradient boosted machine
gbmFit <- gbm(Attendance ~ ., train, distribution="gaussian", n.trees=5000,
              cv.folds=10, interaction.depth=9)
save(gbmFit, file="data/models/gbmFit.rda")

# random forests
rfFit <- randomForest(Attendance ~ ., data=train, mtry=3, ntree=1000)
save(rfFit, file="data/models/rfFit.rda")
