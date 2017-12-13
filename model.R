model<-glm(Survived~female,data=train,family='binomial')
test$prob<-unname(predict(model, newdata = test,type='response'))

test$prediction<-1
rows<-which(test$prob<.5)
test$prediction[rows]<-0


rows<-which(test$prediction==test$Survived)
length(rows)