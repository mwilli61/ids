# extracting the data---------



query<- "SELECT weight
FROM Master"

result<-sqldf(query)


# visualize the data-------------
ggplot()+
  geom_histogram(data=result,aes(x=weight),color="red",fill="white",bins = 30)+
  ggtitle("Baseball Player Body-Weight Distribution")