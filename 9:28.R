# gathering data---------



query<-"SELECT playerID,sum(HR) AS career_HR,sum(SO) AS career_SO
FROM Batting
GROUP BY playerID
HAVING sum(HR)>=400"


result<-sqldf(query)

# visualizing data------
ggplot()+
  geom_point(data=result,aes(x=career_SO,y=career_HR),size=3,color="blue")+
  ggtitle("Career Strikeouts VS Homeruns for Great Hitters")+
  xlab("Career Strikeouts")+
  ylab("Career Homeruns")
