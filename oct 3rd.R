#extracting the data---------------------



query<-"SELECT name,HR
From Teams
WHERE yearID=1980
ORDER BY HR"
result<-sqldf(query)

#visualizing the data-------------------
ggplot()+
  geom_bar(data=result,aes(x=name,y=HR),stat='identity',color='blue',fill='purple')+
  coord_flip()+
  ylab('homeruns')+
  xlab("team")+
  ggtitle('1980 Team Homerun Distribution')


result$name<-factor(result$name,levels=result$name)