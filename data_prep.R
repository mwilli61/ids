titanic<-read.csv('train.csv',header = TRUE)
titanic<-titanic[ ,c(2,5)]


# quality of the data----------

unique(titanic$Survived)
unique(titanic$Sex)
is.na(titanic$Survived)
is.na(titanic$Sex)
sum(is.na(titanic$Survived))
sum(is.na(titanic$Sex))
#-------------------------------------------------
titanic$female<-1
rows<-which(titanic$Sex == 'male')
titanic$female[rows]<-0
titanic$Sex<-NULL