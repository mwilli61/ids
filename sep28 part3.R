# extracting the data---------



query<-"SELECT yearID, HR
FROM Batting
WHERE playerID='ruthba01'"

result<-sqldf(query)

# visualizing the data--------

ggplot()+
  geom_line(data=result,aes(x=yearID,y=HR))+
  geom_point(data=result,aes(x=yearID,y=HR))+
  ggtitle("Ruth's Homerun Totals Through the Years")+
  xlab("year")+
  ylab("homerun")