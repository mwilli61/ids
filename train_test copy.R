
#randomizing our data


rows<-sample(891)
titanic<-titanic[rows, ]
#------------------------------------------------------
#contructing training and test sets 
train<-titanic[1:591, ]
test<-titanic[592:891, ]